//
// PORTDB_larsen2ways
// 
// goes both ways: Back AND Forth  :)

// 
//                             11
//                             1098765432    
const word dimbits[] = { 0b0000000011111100, // frame 1
                         0b0000000011111000,
                         0b0000000011110000, 
                         0b0000000011100000, 
                         0b0000000011000000, 
                         0b0000000010000000, 
                         0b0000000010000000, 
                         0b0000000010000000, 
                         0b0000000000000000,
                         0b0000000000000000,
                         0b0000000000000000,
                         0b0000000000000000,
//                             1098765432                                 
                         0b0000000111111000, // frame 2
                         0b0000000111110000,
                         0b0000000111100000, 
                         0b0000000111000000, 
                         0b0000000110000000, 
                         0b0000000100000000, 
                         0b0000000100000000, 
                         0b0000000100000000, 
                         0b0000000000000000,
                         0b0000000000000000,
                         0b0000000000000000,
                         0b0000000000000000,
//                             1098765432                                 
                         0b0000001111110000, // frame 3
                         0b0000001111100000,
                         0b0000001111000000, 
                         0b0000001110000000, 
                         0b0000001100000000, 
                         0b0000001000000000, 
                         0b0000001000000000, 
                         0b0000001000000000, 
                         0b0000000000000000,
                         0b0000000000000000,
                         0b0000000000000000,
                         0b0000000000000000,
//                             1098765432                                 
                         0b0000011111100000, // frame 4
                         0b0000011111000000,
                         0b0000011110000000, 
                         0b0000011100000000, 
                         0b0000011000000000, 
                         0b0000010000000000, 
                         0b0000010000000000, 
                         0b0000010000000000, 
                         0b0000000000000000,
                         0b0000000000000000,
                         0b0000000000000000,
                         0b0000000000000000,
//                             1098765432                                 
                         0b0000111111000000, // frame 5 ****
                         0b0000111110000000,
                         0b0000111100000000, 
                         0b0000111000000000, 
                         0b0000110000000000, 
                         0b0000100000000000, 
                         0b0000100000000000, 
                         0b0000100000000000, 
                         0b0000000000000000,
                         0b0000000000000000,
                         0b0000000000000000,
                         0b0000000000000000,
//                             1098765432                                 
                         0b0000111110000000, // frame 6
                         0b0000111100000000,
                         0b0000111000000000, 
                         0b0000110000000000, 
                         0b0000110000000000, 
                         0b0000010000000000, 
                         0b0000010000000000, 
                         0b0000010000000000, 
                         0b0000000000000000,
                         0b0000000000000000,
                         0b0000000000000000,
                         0b0000000000000000,
//                             1098765432                                 
                         0b0000111100000000, // frame 7
                         0b0000111000000000,
                         0b0000111000000000, 
                         0b0000111000000000, 
                         0b0000011000000000, 
                         0b0000001000000000, 
                         0b0000001000000000, 
                         0b0000001000000000, 
                         0b0000000000000000,
                         0b0000000000000000,
                         0b0000000000000000,
                         0b0000000000000000,
//                             1098765432                                 
                         0b0000111100000000, // frame 8
                         0b0000111100000000,
                         0b0000111100000000, 
                         0b0000011100000000, 
                         0b0000001100000000, 
                         0b0000000100000000, 
                         0b0000000100000000, 
                         0b0000000100000000, 
                         0b0000000000000000,
                         0b0000000000000000,
                         0b0000000000000000,
                         0b0000000000000000,
//                             1098765432                                 
                         0b0000111110000000, // frame 9
                         0b0000111110000000,
                         0b0000011110000000, 
                         0b0000001110000000, 
                         0b0000000110000000, 
                         0b0000000010000000, 
                         0b0000000010000000, 
                         0b0000000010000000, 
                         0b0000000000000000,
                         0b0000000000000000,
                         0b0000000000000000,
                         0b0000000000000000,
//                             1098765432                                 
                         0b0000111111000000, // frame 10
                         0b0000011111000000,
                         0b0000001111000000, 
                         0b0000000111000000, 
                         0b0000000011000000, 
                         0b0000000001000000, 
                         0b0000000001000000, 
                         0b0000000001000000, 
                         0b0000000000000000,
                         0b0000000000000000,
                         0b0000000000000000,
                         0b0000000000000000,
//                             1098765432                                 
                         0b0000011111100000, // frame 11
                         0b0000001111100000,
                         0b0000000111100000, 
                         0b0000000011100000, 
                         0b0000000001100000, 
                         0b0000000000100000, 
                         0b0000000000100000, 
                         0b0000000000100000, 
                         0b0000000000000000,
                         0b0000000000000000,
                         0b0000000000000000,
                         0b0000000000000000,
//                             1098765432                              
                         0b0000001111110000, // frame 12
                         0b0000000111110000,
                         0b0000000011110000, 
                         0b0000000001110000, 
                         0b0000000000110000, 
                         0b0000000000010000, 
                         0b0000000000010000, 
                         0b0000000000010000, 
                         0b0000000000000000,
                         0b0000000000000000,
                         0b0000000000000000,
                         0b0000000000000000,
//                             1098765432                              
                         0b0000000111111000, // frame 13
                         0b0000000011111000,
                         0b0000000001111000, 
                         0b0000000000111000, 
                         0b0000000000011000, 
                         0b0000000000001000, 
                         0b0000000000001000, 
                         0b0000000000001000, 
                         0b0000000000000000,
                         0b0000000000000000,
                         0b0000000000000000,
                         0b0000000000000000,
//                             1098765432                              
                         0b0000000011111100, // frame 14 ***
                         0b0000000001111100,
                         0b0000000000111100, 
                         0b0000000000011100, 
                         0b0000000000001100, 
                         0b0000000000000100, 
                         0b0000000000000100, 
                         0b0000000000000100, 
                         0b0000000000000000,
                         0b0000000000000000,
                         0b0000000000000000,
                         0b0000000000000000, 
//                             1098765432                              
                         0b0000000001111100, // frame 15
                         0b0000000000111100,
                         0b0000000000011100, 
                         0b0000000000001100, 
                         0b0000000000001100, 
                         0b0000000000001000, 
                         0b0000000000001000, 
                         0b0000000000001000, 
                         0b0000000000000000,
                         0b0000000000000000,
                         0b0000000000000000,
                         0b0000000000000000, 
//                             1098765432                              
                         0b0000000000111100, // frame 16
                         0b0000000000011100,
                         0b0000000000011100, 
                         0b0000000000011100, 
                         0b0000000000011000, 
                         0b0000000000010000, 
                         0b0000000000010000, 
                         0b0000000000010000, 
                         0b0000000000000000,
                         0b0000000000000000,
                         0b0000000000000000,
                         0b0000000000000000,
//                             1098765432                              
                         0b0000000000111100, // frame 17
                         0b0000000000111100,
                         0b0000000000111100, 
                         0b0000000000111000, 
                         0b0000000000110000, 
                         0b0000000000100000, 
                         0b0000000000100000, 
                         0b0000000000100000, 
                         0b0000000000000000,
                         0b0000000000000000,
                         0b0000000000000000,
                         0b0000000000000000,
//                             1098765432                              
                         0b0000000001111100, // frame 18
                         0b0000000001111100,
                         0b0000000001111000, 
                         0b0000000001110000, 
                         0b0000000001100000, 
                         0b0000000001000000, 
                         0b0000000001000000, 
                         0b0000000001000000, 
                         0b0000000000000000,
                         0b0000000000000000,
                         0b0000000000000000,
                         0b0000000000000000};                         
                         
unsigned long duration = 0;
unsigned long times_out = 7500;  // frame's time out "speed"
                                 // 500 for way fast
                                 // 50000 for way slow
                        
int idx;
byte framepointer = 0;

/* 
 * //////////////////////////////////////
 * //making sense of the sensor's output
 * //////////////////////////////////////
 *
 * Switches a LED according to the state of the sensors output pin.
 * Determines the beginning and end of continuous motion sequences.
 *
 * @author: Kristian Gohlke / krigoo (_) gmail (_) com / https://krx.at
 * @date:   3. September 2006 
 *
 * kr1 (cleft) 2006 
 * released under a creative commons "Attribution-NonCommercial-ShareAlike 2.0" license
 * https://creativecommons.org/licenses/by-nc-sa/2.0/de/
 *
 * The sensor's output pin goes to HIGH if motion is present.
 * However, even if motion is present it goes to LOW from time to time, 
 * which might give the impression no motion is present. 
 * This program deals with this issue by ignoring LOW-phases shorter than a given time, 
 * assuming continuous motion is present during these phases.
 *  
 */

/////////////////////////////
//VARS
//the time we give the sensor to calibrate (10-60 secs according to the datasheet)
//different sensor so smaller calibration time
int calibrationTime = 5;        

//the time when the sensor outputs a low impulse
long unsigned int lowIn;        

//the amount of milliseconds the sensor has to be low 
//before we assume all motion has stopped
long unsigned int pause = 5000;  

boolean lockLow = true;
boolean takeLowTime;  

int radPin = 12;    //the digital pin connected to the sensor's output
//int ledPin = 13;

/////////////////////////////
//SETUP
void setup(){

//Larson
  //pinMode(13,OUTPUT);
  pinMode(2, OUTPUT);
  pinMode(3, OUTPUT);
  pinMode(4, OUTPUT);
  pinMode(5, OUTPUT);
  pinMode(6, OUTPUT);
  pinMode(7, OUTPUT);
  pinMode(8, OUTPUT);
  pinMode(9, OUTPUT);
  pinMode(10, OUTPUT);
  pinMode(11, OUTPUT);
  //PORTD &= 0b00000011;

  Serial.begin(9600);
  pinMode(radPin, INPUT);
  //pinMode(ledPin, OUTPUT);
  digitalWrite(radPin, LOW);

  //give the sensor some time to calibrate
  Serial.print("calibrating sensor ");
    for(int i = 0; i < calibrationTime; i++){
      Serial.print(".");
      delay(1000);
      }
    Serial.println(" done");
    Serial.println("SENSOR ACTIVE");
    delay(50);
  }

////////////////////////////
//LOOP
void loop(){

     if(digitalRead(radPin) == HIGH){
       //digitalWrite(ledPin, HIGH);   //the led visualizes the sensors output pin state
       if(lockLow){  
         //makes sure we wait for a transition to LOW before any further output is made:
         lockLow = false;            
         Serial.println("---");
         Serial.print("motion detected at ");
         Serial.print(millis()/1000);
         Serial.println(" sec"); 
         delay(50);
         }

// Larson code
  for (framepointer = 0; framepointer < 216; framepointer = (framepointer + 12))
  // 0-11,12-33,24-35,36-47,48-59,60-71,72-83,84-95,96-107,
  // 108-119,120-131,132-143,144-155,156-167,168-179,
  // 180-191,192-203,204-215,216
  {
    for(duration=0; duration<times_out; duration++)
    // times_out is the number of
    // frame repetitions
    {
      for(idx = framepointer; idx < (framepointer + 12); idx++)
      {
        commitPORTs();
      }
    }
  }
  framepointer = 0;
  //delay(500);
             
         takeLowTime = true;
       }

     if(digitalRead(radPin) == LOW){       
       //digitalWrite(ledPin, LOW);  //the led visualizes the sensors output pin state

       if(takeLowTime){
        lowIn = millis();          //save the time of the transition from high to LOW
        takeLowTime = false;       //make sure this is only done at the start of a LOW phase
        }
       //if the sensor is low for more than the given pause, 
       //we assume that no more motion is going to happen
       if(!lockLow && millis() - lowIn > pause){  
           //makes sure this block of code is only executed again after 
           //a new motion sequence has been detected
           lockLow = true;                        
           Serial.print("motion ended at ");      //output
           Serial.print((millis() - pause)/1000);
           Serial.println(" sec");
           delay(50);
           }
       }
  }

// Larson array
void commitPORTs ()
{
  PORTD = dimbits[idx];
  PORTB = dimbits[idx]/256;
}
