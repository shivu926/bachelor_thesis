




//Pin number where the sensor is connected. (Analog 0)
#define EMG_PIN1 0
#define EMG_PIN2 1
#define EMG_PIN3 2
#define EMG_PIN4 3

void setup(){
  
  //BAUDRATE set to 115200, remember it to set monitor serial properly. 
  //Used this Baud Rate and "NL&CR" option to visualize the values correctly.
  Serial.begin(9600);
  
}

void loop(){

  float value1 = analogRead(EMG_PIN1);
  float value2 = analogRead(EMG_PIN2);
  float value3 = analogRead(EMG_PIN3);
  float value4 = analogRead(EMG_PIN4);
  
  Serial.print("Voltage Muscle 1");
  Serial.print(value1);

  
  Serial.print("Voltage Muscle 2");
  Serial.print(value2);

  
  Serial.print("Voltage Muscle 3");
  Serial.print(value3);


  Serial.print("Voltage Muscle 4");
  Serial.print(value4);

  delay(2000);
  
}
