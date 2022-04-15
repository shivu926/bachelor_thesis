#define GSR 4
#define GSR2 5

int sensorValue = 0;
int gsr_average = 0;
int sensorValue2 = 0;
int gsr_average2 = 0;

void setup()
{
  Serial.begin(9600);
}

void loop()
{
  long sum = 0;
  long sum_new = 0;
  for(int i=0;i<10;i++)
  {
    sensorValue=analogRead(GSR);
    sensorValue2=analogRead(GSR2);
    sum += sensorValue;
    sum_new += sensorValue2;
    delay(5);
  }
  gsr_average = sum/10;
  gsr_average2 = sum_new/10;
  int human_resistance1 = ((1024+2*gsr_average)*10000)/(516-gsr_average);
  int human_resistance2 = ((1024+2*gsr_average2)*10000)/(516-gsr_average2);
  Serial.print("GSR 1");
  Serial.print(human_resistance1);
  Serial.print("GSR 2");
  Serial.print(human_resistance2);

  delay(2000);

  
  }
