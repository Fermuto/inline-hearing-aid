#include <Audio.h>
#include <Wire.h>
#include <SPI.h>
#include <SD.h>
#include <SerialFlash.h>
#include <Tympan_Library.h>
#include <U8g2lib.h>
#include <EEPROM.h>
#define B_RE(signal, state) (state=(state<<1)|signal)==B00001111
#define B_FE(signal, state) (state=(state<<1)|signal)==B11110000

//GLOBAL VARIABLES
int N_Bands = 8;
const int myInput = AUDIO_INPUT_LINEIN;
const float samplerate = 44100.0f ;  
const int num_blocks = 128;
unsigned long PreviousMillis = 0; 
const long interVal = 5;

int MenuIndex = 0;
int SelectionIndex = 10;
int InputHold = 0;
int ValueChanged = 0;
int InitialDraw = 1;
int ButtonPressed = 0;
byte ValB0, ValB1, ValB2, ValB3, ValB4, ValB5, ValB6, ValB7, ValA;
byte ButtonFalling, ButtonRising;


//CONSTRUCTORS
AudioSettings_F32             audio_settings(samplerate, num_blocks);
AudioControlSGTL5000          sgtl5000_1;  
AudioInputI2S                 i2s_in;
AudioConvert_I16toF32         convertIN_L;
AudioConvert_I16toF32         convertIN_R;
AudioConvert_F32toI16         convertOUT_L;
AudioConvert_F32toI16         convertOUT_R;
AudioFilterbankBiquad_F32     filterbank_L(audio_settings);
AudioFilterbankBiquad_F32     filterbank_R(audio_settings);
AudioEffectGain_F32           gain_L[8];
AudioEffectGain_F32           gain_R[8];
AudioMixer8_F32               mixer_L(audio_settings);
AudioMixer8_F32               mixer_R(audio_settings);
AudioEffectGain_F32           gainFINAL_L;
AudioEffectGain_F32           gainFINAL_R;
AudioOutputI2S                i2s_out;

U8G2_SSD1327_MIDAS_128X128_F_HW_I2C u8g2(U8G2_R0, U8X8_PIN_NONE);

//WIRE TIME
AudioConnection           patchCord1(i2s_in, 0, convertIN_L, 0);
AudioConnection           patchCord2(i2s_in, 1, convertIN_R, 0);

AudioConnection_F32       patchCord3(convertIN_L, 0, filterbank_L, 0);
AudioConnection_F32       patchCord4(convertIN_R, 0, filterbank_R, 0);

AudioConnection_F32       patchCord11(filterbank_L, 0, gain_L[0], 0);
AudioConnection_F32       patchCord12(filterbank_L, 1, gain_L[1], 0);
AudioConnection_F32       patchCord13(filterbank_L, 2, gain_L[2], 0);
AudioConnection_F32       patchCord14(filterbank_L, 3, gain_L[3], 0);
AudioConnection_F32       patchCord15(filterbank_L, 4, gain_L[4], 0);
AudioConnection_F32       patchCord16(filterbank_L, 5, gain_L[5], 0);
AudioConnection_F32       patchCord17(filterbank_L, 6, gain_L[6], 0);
AudioConnection_F32       patchCord18(filterbank_L, 7, gain_L[7], 0);

AudioConnection_F32       patchCord21(filterbank_R, 0, gain_R[0], 0);
AudioConnection_F32       patchCord22(filterbank_R, 1, gain_R[1], 0);
AudioConnection_F32       patchCord23(filterbank_R, 2, gain_R[2], 0);
AudioConnection_F32       patchCord24(filterbank_R, 3, gain_R[3], 0);
AudioConnection_F32       patchCord25(filterbank_R, 4, gain_R[4], 0);
AudioConnection_F32       patchCord26(filterbank_R, 5, gain_R[5], 0);
AudioConnection_F32       patchCord27(filterbank_R, 6, gain_R[6], 0);
AudioConnection_F32       patchCord28(filterbank_R, 7, gain_R[7], 0);

AudioConnection_F32       patchCord31(gain_L[0], 0, mixer_L, 0);
AudioConnection_F32       patchCord32(gain_L[1], 0, mixer_L, 1);
AudioConnection_F32       patchCord33(gain_L[2], 0, mixer_L, 2);
AudioConnection_F32       patchCord34(gain_L[3], 0, mixer_L, 3);
AudioConnection_F32       patchCord35(gain_L[4], 0, mixer_L, 4);
AudioConnection_F32       patchCord36(gain_L[5], 0, mixer_L, 5);
AudioConnection_F32       patchCord37(gain_L[6], 0, mixer_L, 6);
AudioConnection_F32       patchCord38(gain_L[7], 0, mixer_L, 7);

AudioConnection_F32       patchCord41(gain_R[0], 0, mixer_R, 0);
AudioConnection_F32       patchCord42(gain_R[1], 0, mixer_R, 1);
AudioConnection_F32       patchCord43(gain_R[2], 0, mixer_R, 2);
AudioConnection_F32       patchCord44(gain_R[3], 0, mixer_R, 3);
AudioConnection_F32       patchCord45(gain_R[4], 0, mixer_R, 4);
AudioConnection_F32       patchCord46(gain_R[5], 0, mixer_R, 5);
AudioConnection_F32       patchCord47(gain_R[6], 0, mixer_R, 6);
AudioConnection_F32       patchCord48(gain_R[7], 0, mixer_R, 7);


AudioConnection_F32       patchCord51(mixer_L, 0, gainFINAL_L, 0);
AudioConnection_F32       patchCord52(mixer_R, 0, gainFINAL_R, 0);

AudioConnection_F32       patchCord61(gainFINAL_L, 0, convertOUT_L, 0);
AudioConnection_F32       patchCord62(gainFINAL_R, 0, convertOUT_R, 0);

AudioConnection           patchCord71(convertOUT_L, 0, i2s_out, 0);
AudioConnection           patchCord72(convertOUT_R, 0, i2s_out, 1);

void u8g2_prepare(void) {
  //buffer write preparation
  //u8g2.setFont(u8g2_font_simple1_tf);
  u8g2.setFont(u8g2_font_squeezed_r7_tr);
  //u8g2.setFont(u8g2_font_5x8_tf);
  u8g2.setFontRefHeightExtendedText();
  u8g2.setDrawColor(1);
  u8g2.setFontPosTop();
  u8g2.setFontDirection(0);
}

void grab_eeprom(void){
  //grab saved data from EEPROM
  switch(MenuIndex){
    case 0:
      ValB0 = EEPROM.read(0);
      if (ValB0 > 80){
        ValB0 = 80;
      }
      ValB1 = EEPROM.read(1);
      if (ValB1 > 80){
        ValB1 = 80;
      }
      ValB2 = EEPROM.read(2);
      if (ValB2 > 80){
        ValB2 = 80;
      }
      ValB3 = EEPROM.read(3);
      if (ValB3 > 80){
        ValB3 = 80;
      }
      ValB4 = EEPROM.read(4);
      if (ValB4 > 80){
        ValB4 = 80;
      }
      ValB5 = EEPROM.read(5);
      if (ValB5 > 80){
        ValB5 = 80;
      }
      ValB6 = EEPROM.read(6);
      if (ValB6 > 80){
        ValB6 = 80;
      }
      ValB7 = EEPROM.read(7);
      if (ValB7 > 80){
        ValB7 = 80;
      }
      break;
    case 1:
      ValA = EEPROM.read(8);
      if (ValA > 80) {
        ValA = 80;
      }
      break;
  }
}

void set_values(void) {
  gain_L[0].setGain_dB(ValB0);
  gain_L[1].setGain_dB(ValB1);
  gain_L[2].setGain_dB(ValB2);
  gain_L[3].setGain_dB(ValB3);
  gain_L[4].setGain_dB(ValB4);
  gain_L[5].setGain_dB(ValB5);
  gain_L[6].setGain_dB(ValB6);
  gain_L[7].setGain_dB(ValB7);
  gain_R[0].setGain_dB(ValB0);
  gain_R[1].setGain_dB(ValB1);
  gain_R[2].setGain_dB(ValB2);
  gain_R[3].setGain_dB(ValB3);
  gain_R[4].setGain_dB(ValB4);
  gain_R[5].setGain_dB(ValB5);
  gain_R[6].setGain_dB(ValB6);
  gain_R[7].setGain_dB(ValB7);
  gainFINAL_L.setGain_dB(ValA);
  gainFINAL_R.setGain_dB(ValA);
}

void setup() {
  AudioMemory(12);
  AudioMemory_F32(32);

  sgtl5000_1.enable();
  sgtl5000_1.adcHighPassFilterDisable();
  sgtl5000_1.inputSelect(myInput);
  sgtl5000_1.volume(0.5);
  
  float crossfreq[N_Bands - 1]={125.0, 250.0, 500.0, 1000.0, 2000.0, 4000.0, 8000.0}; 
  int test_L = filterbank_L.designFilters(N_Bands, 6, samplerate, num_blocks, crossfreq);
  int test_R = filterbank_R.designFilters(N_Bands, 6, samplerate, num_blocks, crossfreq);
  
  if (test_L < 0 || test_R < 0){
    Serial.println("It broke :(");
  }
  else{
    Serial.println("It didn't break :)");
  }

  pinMode(13, INPUT_PULLUP);
  pinMode(38, INPUT_PULLUP);
  pinMode(37, INPUT_PULLUP);
  pinMode(36, INPUT_PULLUP);
  
  Serial.println("Done!");
  u8g2.begin();

}

void loop() {
  //LOOP SPECIFIC VARIABLES
  int D_Val = !(digitalRead(13));
  int U_Val = !(digitalRead(36));
  int R_Val = !(digitalRead(37));
  int L_Val = !(digitalRead(38));
  unsigned long CurrentMillis = millis();
  static unsigned long PreviousDebounce;
  


  //DRAW DISPLAY + UPDATE VALUES)
  if ((CurrentMillis - PreviousMillis >= interVal) && ((ValueChanged == 1) || (InitialDraw == 1))) { 
    PreviousMillis = CurrentMillis;
    Serial.println(PreviousMillis);
    
    grab_eeprom();
    set_values();
    
    u8g2.clearBuffer();
    u8g2_prepare();
    switch(MenuIndex){
      case 0:
        u8g2.drawStr( 0, -1, "Equalizer (dB)");
        u8g2.drawStr( 90, -1, "Next Menu");
        u8g2.drawHLine(0, 9, 128);
        u8g2.drawBox(1, (107 - (ValB0 + 1)),14,(ValB0 + 1));
        u8g2.drawBox(17,(107 - (ValB1 + 1)),14,(ValB1 + 1));
        u8g2.drawBox(33,(107 - (ValB2 + 1)),14,(ValB2 + 1));
        u8g2.drawBox(49,(107 - (ValB3 + 1)),14,(ValB3 + 1));
        u8g2.drawBox(65,(107 - (ValB4 + 1)),14,(ValB4 + 1));
        u8g2.drawBox(81,(107 - (ValB5 + 1)),14,(ValB5 + 1));
        u8g2.drawBox(97,(107 - (ValB6 + 1)),14,(ValB6 + 1));
        u8g2.drawBox(113,(107 - (ValB7 + 1)),14,(ValB7 + 1));
        u8g2.drawHLine(0, 107, 128);
        u8g2.setCursor(5, 109);
        u8g2.print(ValB0);
        u8g2.setCursor(21, 109);
        u8g2.print(ValB1);
        u8g2.setCursor(37, 109);
        u8g2.print(ValB2);
        u8g2.setCursor(53, 109);
        u8g2.print(ValB3);
        u8g2.setCursor(69, 109);
        u8g2.print(ValB4);
        u8g2.setCursor(85, 109);
        u8g2.print(ValB5);
        u8g2.setCursor(101, 109);
        u8g2.print(ValB6);
        u8g2.setCursor(117, 109);
        u8g2.print(ValB7);
        u8g2.drawHLine(0, 118, 128);
        u8g2.drawStr(12, 120, "125");
        u8g2.drawStr(28, 120, "250");
        u8g2.drawStr(43, 120, "500");
        u8g2.drawStr(61, 120, "1k");
        u8g2.drawStr(78, 120, "2k");
        u8g2.drawStr(94, 120, "4k");
        u8g2.drawStr(110, 120, "8k");

        switch(SelectionIndex) {
          case 0: u8g2.drawTriangle(4,(107 - (ValB0 + 1) - 6), 12,(107 - (ValB0 + 1) - 6), 8,(107 - (ValB0 + 1) - 2)); break;
          case 1: u8g2.drawTriangle(20,(107 - (ValB1 + 1) - 6), 28,(107 - (ValB1 + 1) - 6), 24,(107 - (ValB1 + 1) - 2)); break;
          case 2: u8g2.drawTriangle(36,(107 - (ValB2 + 1) - 6), 44,(107 - (ValB2 + 1) - 6), 40,(107 - (ValB2 + 1) - 2)); break;
          case 3: u8g2.drawTriangle(52,(107 - (ValB3 + 1) - 6), 60,(107 - (ValB3 + 1) - 6), 56,(107 - (ValB3 + 1) - 2)); break;
          case 4: u8g2.drawTriangle(68,(107 - (ValB4 + 1) - 6), 76,(107 - (ValB4 + 1) - 6), 72,(107 - (ValB4 + 1) - 2)); break;
          case 5: u8g2.drawTriangle(84,(107 - (ValB5 + 1) - 6), 92,(107 - (ValB5 + 1) - 6), 88,(107 - (ValB5 + 1) - 2)); break;
          case 6: u8g2.drawTriangle(100,(107 - (ValB6 + 1) - 6), 108,(107 - (ValB6 + 1) - 6), 104,(107 - (ValB6 + 1) - 2)); break;
          case 7: u8g2.drawTriangle(116,(107 - (ValB7 + 1) - 6), 124,(107 - (ValB7 + 1) - 6), 120,(107 - (ValB7 + 1) - 2)); break;
          case 10: u8g2.drawTriangle(85,0, 85,8, 89,4); break;
        }
        break;
      case 1:
        u8g2.drawStr(0, -1, "Amplifier (dB)");
        u8g2.drawStr(90, -1, "Next Menu");
        u8g2.drawHLine(0, 9, 128);  
        u8g2.setCursor(0, 12);
        u8g2.print(ValA);
        u8g2.drawBox(24,52,ValA,10);
        u8g2.drawVLine(24, 50, 14);
        u8g2.drawVLine(104, 50, 14);
        switch(SelectionIndex) {
          case 0: u8g2.drawTriangle((21 + ValA), 47, (27 + ValA),47, (24 + ValA),50); break;
          case 10: u8g2.drawTriangle(85,0, 85,8, 89,4); break;
        }
        break;
    }
    u8g2.sendBuffer();
    InitialDraw = 0;
    ValueChanged = 0;
  }
  
  if (CurrentMillis - PreviousDebounce >= interVal) {
    PreviousDebounce = CurrentMillis;

    if (B_RE((D_Val || U_Val || R_Val || L_Val), ButtonRising)) {
      Serial.print ("Rising edge (button depressed) StateVar: ");
      Serial.println (ButtonRising);
      ButtonPressed = 1;
    }

    if (B_FE((D_Val || U_Val || R_Val || L_Val), ButtonFalling)) {
      Serial.print ("Falling edge (button released) StateVar: ");
      Serial.println (ButtonFalling);
    }
  }
  
  
  //NAVIGATION AND VALUE CHANGE
  if (ButtonPressed == 1){
    switch(MenuIndex){
      case 0: 
        if (D_Val == 1 && InputHold == 0){
          InputHold = 1;
          switch(SelectionIndex) {
            case 0: ValB0 = ValB0 - 1; EEPROM.write(0, ValB0); ValueChanged = 1; break;
            case 1: ValB1 = ValB1 - 1; EEPROM.write(1, ValB1); ValueChanged = 1; break;
            case 2: ValB2 = ValB2 - 1; EEPROM.write(2, ValB2); ValueChanged = 1; break;
            case 3: ValB3 = ValB3 - 1; EEPROM.write(3, ValB3); ValueChanged = 1; break;
            case 4: ValB4 = ValB4 - 1; EEPROM.write(4, ValB4); ValueChanged = 1; break;
            case 5: ValB5 = ValB5 - 1; EEPROM.write(5, ValB5); ValueChanged = 1; break;
            case 6: ValB6 = ValB6 - 1; EEPROM.write(6, ValB6); ValueChanged = 1; break;
            case 7: ValB7 = ValB7 - 1; EEPROM.write(7, ValB7); ValueChanged = 1; break;
            case 10: break;
          }
        }
        if (U_Val == 1 && InputHold == 0){
          InputHold = 1;
          switch(SelectionIndex) {
            case 0: ValB0 = ValB0 + 1; EEPROM.write(0, ValB0); ValueChanged = 1; break;
            case 1: ValB1 = ValB1 + 1; EEPROM.write(1, ValB1); ValueChanged = 1; break;
            case 2: ValB2 = ValB2 + 1; EEPROM.write(2, ValB2); ValueChanged = 1; break;
            case 3: ValB3 = ValB3 + 1; EEPROM.write(3, ValB3); ValueChanged = 1; break;
            case 4: ValB4 = ValB4 + 1; EEPROM.write(4, ValB4); ValueChanged = 1; break;
            case 5: ValB5 = ValB5 + 1; EEPROM.write(5, ValB5); ValueChanged = 1; break;
            case 6: ValB6 = ValB6 + 1; EEPROM.write(6, ValB6); ValueChanged = 1; break;
            case 7: ValB7 = ValB7 + 1; EEPROM.write(7, ValB7); ValueChanged = 1; break;
            case 10: MenuIndex = 1; ValueChanged = 1; break;
          }
        }
        if (R_Val == 1 && InputHold == 0){
          InputHold = 1;
          switch(SelectionIndex) {
            case 7: SelectionIndex = 10; ValueChanged = 1; break;
            case 10: SelectionIndex = 7; ValueChanged = 1; break;
            default: SelectionIndex = SelectionIndex + 1; ValueChanged = 1; break;
          }
        }
        if (L_Val == 1 && InputHold == 0){
          InputHold = 1;
          switch(SelectionIndex) {
            case 0: SelectionIndex = 10; ValueChanged = 1; break;
            case 10: SelectionIndex = 0; ValueChanged = 1; break;
            default: SelectionIndex = SelectionIndex - 1; ValueChanged = 1; break;
          }
        }
        break;
      case 1:
        if (D_Val == 1  && InputHold == 0){
          InputHold = 1; 
          switch(SelectionIndex){
            case 0: break;
            case 10: SelectionIndex = 0; ValueChanged = 1; break;
          }
        }
        if (U_Val == 1  && InputHold == 0){
          InputHold = 1; 
          switch(SelectionIndex){
            case 0: SelectionIndex = 10; ValueChanged = 1; break;
            case 10: MenuIndex = 0; ValueChanged = 1; break;
          }
        }
        if (R_Val == 1  && InputHold == 0){
          InputHold = 1; 
          switch(SelectionIndex){
            case 0: ValA = ValA + 1; EEPROM.write(8, ValA); ValueChanged = 1; break;
            case 10: break;
          }
        }
        if (L_Val == 1  && InputHold == 0){
          InputHold = 1; 
          switch(SelectionIndex){
            case 0: ValA = ValA - 1; EEPROM.write(8, ValA); ValueChanged = 1; break;
            case 10: break;
          }
        }
        break;
    }
    InputHold = 0;
    ButtonPressed = 0;
  }

}
