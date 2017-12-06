#include <SPI.h>
#include <Wire.h>
#include <Adafruit_GFX.h>
#include <Adafruit_SSD1325.h>
#include "logo.h"
#include "pins.h"
#include "constants.h"
#include "shift_register.h"

#define max_page 2

Adafruit_SSD1325 display(OLED_MOSI, OLED_CLK, OLED_DC, OLED_RESET, OLED_CS);

uint8_t disp_page; //display page

//uint8_t rpm; //rpm
//uint8_t odo; //miles
uint8_t battery_temp; //Farenheit
uint8_t t_pressure; //psi

int8_t dir = 0; //1 = forward, 0 = neutral, -1 = reverse. init neutral
int8_t switch_pos = 'E';

uint8_t spd;//speed in mph
uint8_t LV_SOC;
uint8_t HV_SOC;

uint8_t IMD_FLT     = 0;
uint8_t BMS_FLT     = 0;
uint8_t SEVCON_FLT  = 0;
uint8_t BRAKE_FLT   = 0;
uint8_t COCKPIT_SW  = 0;
uint8_t dir_enabled = 0; //direction enable button is down - init false

void setup() {
  Serial.begin(9600);
  Serial.println("Display Startup");
  //UI I/O
  pinMode(SW1_L_IN, INPUT);
  pinMode(SW1_R_IN, INPUT);
  pinMode(FORWARD_IN, INPUT);
  pinMode(REVERSE_IN, INPUT);
  pinMode(LED_R, OUTPUT);
  //Shift Register Interface
  pinMode(SERIAL_1, OUTPUT);
  pinMode(CLK_1, OUTPUT);
  pinMode(CLR_1, OUTPUT);
  pinMode(SERIAL_2, OUTPUT);
  pinMode(CLK_2, OUTPUT);
  pinMode(CLR_2, OUTPUT);
  

  attachInterrupt(digitalPinToInterrupt(SW1_L_IN), enableDIR, RISING);
  //attachInterrupt(digitalPinToInterrupt(SW1_R_IN), toggle_disp_down, RISING);
  display.begin();//initialize display

  display.clearDisplay();
  display.drawBitmap(0, 0,  LOGO, display.width(), display.height(), WHITE);
  display.display();
  delay(1000);
  //test_leds(left);
  //test_leds(right);
  Wire.begin(8);
  Wire.onReceive(receiveEvent); // register event
  Wire.onRequest(requestEvent);
}

void loop() {
  //update display vars from MOBO


  //update LEDs
 display.clearDisplay();
 draw_page_0();
 display.display();
 Serial.println("asdf ");     
 Serial.println(dir_enabled);
 /* 
  switch (disp_page) {
    case 0:
      display.clearDisplay();
      draw_page_0();
      display.display();
      break;
    case 1:
      display.clearDisplay();
      draw_page_1();
      display.display();
      break;
    default:
      break;

  }
*/
 //handle buttons
 //int8_t switch_pos = digitalRead(FORWARD_IN)-digitalRead(REVERSE_IN);

 enableDIR(); //Sets switch_pos

 
 Serial.println("dir enabled:");
 Serial.println(dir_enabled);

 
 if(dir_enabled){
  if(switch_pos!=dir){
    dir = switch_pos;
    dir_enabled = 0;
  }
 }
 if(digitalRead(SW1_L_IN) && switch_pos == dir){
   dir_enabled = 1;
 } else {
   dir_enabled = 0;
 }
}

// function that executes whenever data is received from master
// this function is registered as an event, see setup()
void receiveEvent(int howMany) {
  //Serial.println("receiving event");
  //rpm = Wire.read();
  //odo = Wire.read();

  Serial.print("Receiving Event, should be 10, is ");
  Serial.println(howMany, DEC);
  
  battery_temp  = Wire.read();
  t_pressure    = Wire.read();
  spd           = Wire.read();
  LV_SOC        = Wire.read();
  HV_SOC        = Wire.read();
  
  IMD_FLT = Wire.read();
  BMS_FLT = Wire.read();
  SEVCON_FLT = Wire.read();
  BRAKE_FLT = Wire.read();
  COCKPIT_SW = Wire.read();
  
}




void draw_dir(int8_t dir) {

  char dir_char = 'E'; //Base case is error
  
  uint16_t start_x = display.width() - dir_char_wid * 3; /* TODO CHANGE THE CALCULATIONS HERE BB*/
  uint16_t start_y = 0;
  uint16_t offset = 4;
  switch (dir) {
    case 1:
      dir_char = 'D';
      break;
    case 0:
      dir_char = 'N';
      break;
    case -1:
      dir_char = 'R';
      break;
    default:
      dir_char = 'E'; //Error case
      break;
  }

  display.drawChar(start_x, start_y, dir_char, WHITE, BLACK, dir_char_scale);
  display.drawFastVLine(start_x - offset, 0, dir_char_hgt * dir_char_scale, WHITE);
  display.drawFastHLine(start_x - offset, start_y + dir_char_hgt * dir_char_scale, dir_char * dir_char_scale + offset, WHITE);
}

void draw_speed(uint8_t spd) {
  uint8_t wid = display.width();
  uint8_t hgt = display.height();
  uint8_t offset = 5;
  //draw numerals

  display.setCursor(wid / 2 - spd_char_wid, (hgt / 2 - spd_char_hgt / 2) - offset);
  display.setTextColor(WHITE, BLACK);
  display.setTextSize(spd_char_scale);
  display.setTextWrap(false);
  display.print(spd);
  //draw units

  display.setCursor(wid / 2 - spd_char_wid + 2 * spd_char_wid + spd_unit_wid + 4, (hgt / 2 + spd_char_hgt / 2 - (spd_unit_hgt * 1.5)) - offset);
  display.setTextColor(WHITE, BLACK);
  display.setTextSize(spd_unit_scale);
  display.setTextWrap(false);
  display.print("mph");

}

void status_mesg(uint8_t IMD_STATE, uint8_t BMS_STATE, uint8_t SEVCON_STATE, uint8_t BRAKE_STATE, uint8_t COCKPIT_STATE) {

  String  output = "";

  if (IMD_STATE + BMS_STATE + SEVCON_STATE + BRAKE_STATE == 0) {
    display.print("SYSTEM:OK");
  }
  else { //ORDER: BMS IMD BRK CKPT SEVCON 
    output = output + "ERR:" ;  
    
    if (BMS_STATE == 1) {
      output = output + "BMS ";
    }
    else if (IMD_STATE == 1) {
      output = output + "IMD ";
      digitalWrite(LED_R,HIGH);
    }
    else if (BRAKE_STATE == 1) {
      output = output + "BRK ";
    }
    else if (COCKPIT_STATE == 1) {
      output = output + "CKP ";
    }
    else if (SEVCON_STATE == 1) {
      output = output + "SVCN ";
    }
    else {
      output = output + "ERR ";
    }

    display.print(output);
  }

}

void draw_stats(uint8_t temp, uint8_t pres, uint8_t IMD_STATE, uint8_t BMS_STATE, uint8_t SEVCON_STATE, uint8_t BRAKE_STATE, uint8_t COCKPIT_STATE) {


  display.setCursor(0, 0);
  display.setTextColor(WHITE, BLACK);
  display.setTextSize(info_text_scale);
  display.setTextWrap(false);
  display.println("TMP:");
  display.println(temp);
  display.println("");
  display.println("PSI:");
  display.println(pres);
  display.println("");
  display.println("");
  status_mesg(IMD_STATE, BMS_STATE, SEVCON_STATE, BRAKE_STATE, COCKPIT_STATE);

  display.drawFastVLine(info_text_wid * 5, 0, info_text_hgt * 4 + 10, WHITE);
  display.drawFastHLine(0, info_text_hgt * 4 + 10, info_text_wid * 5, WHITE);
  display.drawFastHLine(0, info_text_hgt * 2 + 3, info_text_wid * 5, WHITE);
  display.drawFastHLine(0, display.height() - (info_text_hgt + 4), display.width(), WHITE);
}


void draw_page_0(void) {

  //display.drawRect(0, 0, display.width(), display.height(), WHITE);
  draw_dir(dir);
  draw_speed(spd);
  draw_stats(battery_temp, t_pressure, IMD_FLT, BMS_FLT, SEVCON_FLT, BRAKE_FLT, COCKPIT_SW);

}

void draw_page_1(void) {
  display.drawCircle(display.width() / 2, display.height() / 2, 20, WHITE);
}



void toggle_disp_up() {

  disp_page = disp_page + 1;

  if (disp_page >= max_page) {
    disp_page = 0;
  }
  Serial.println(disp_page);
}

/* FIGURE OUT WHAT THIS DOES*/
void toggle_disp_down() {

  disp_page = disp_page - 1; //disp_page is unsigned int, will automatically underflow
  if (disp_page >= max_page) {
    disp_page = max_page - 1;
  }

  Serial.println(disp_page);
}

 /* DOESN"T NEED TO BE GLOBAL?*/
void enableDIR(){ 
  Serial.println("you pressed a button congrats");
  switch_pos = digitalRead(FORWARD_IN) - digitalRead(REVERSE_IN); /* DOESN"T NEED TO BE GLOBAL?*/
  //int8_t switchPos = digitalRead(FORWARD_IN) - digitalRead(REVERSE_IN);
  
}

void requestEvent() {
  Wire.write(dir);
  //Serial.println("dir_requested");
}

