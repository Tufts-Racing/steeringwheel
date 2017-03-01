#ifndef SHIFT_REGISTER_H
#define SHIFT_REGISTER_H

//shift in bit to register
void shift_in(uint8_t bit_in, uint8_t side){

  if(side == right){
  
    digitalWrite(CLK_1, LOW);
    if(bit_in == 1){
      digitalWrite(SERIAL_1, HIGH);
    }
    else{
      digitalWrite(SERIAL_1, LOW);
    }
    digitalWrite(CLK_1, HIGH);
  }
  else{
    digitalWrite(CLK_2, LOW);
    if(bit_in == 1){
      digitalWrite(SERIAL_2, HIGH);
    }
    else{
      digitalWrite(SERIAL_2, LOW);
    }
    digitalWrite(CLK_2, HIGH);
  }
}

//sets all LEDs to high on a side
void set_all(uint8_t side, uint8_t t_delay){
  
  for(uint8_t i = 0; i<9; i++){
    shift_in(1, side);
    
    if(t_delay != 0){
      delay(t_delay);
    }
  
  }
}
//shifts in 'n' 0s to register, n = num_leds
void clear_leds(uint8_t num_leds, uint8_t side, uint8_t t_delay){
  
  for(uint8_t i = 0; i<num_leds+1; i++){
    shift_in(0, side);
    if(t_delay != 0){
      delay(t_delay);
    }
  }
}
//shifts in stream of 1's, then stream of 0's
void test_leds(uint8_t side){
 
  set_all(side, 20);
  clear_leds(8, side, 20);
}

void clear_reg(uint8_t side){

  if(side == right){
    digitalWrite(CLR_1, LOW);
  }
  else{
    digitalWrite(CLR_2, LOW);
  }
}

void set_leds(uint8_t level, uint8_t side){

  uint8_t num_cleared = 0;
  
  num_cleared = 8 - level;
  
  clear_reg(side);
  set_all(side, 0);
  clear_leds(8, side, 0);
  
}


#endif 
