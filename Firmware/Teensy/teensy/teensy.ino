#include "Arduino.h"
#include "TeensyStep.h"

Stepper motorX(2, 3);   //STEP pin =  2, DIR pin = 3
Stepper motorY(9,10);   //STEP pin =  9, DIR pin = 10
Stepper motorZ(14,15);  //STEP pin = 14, DIR pin = 15
StepControl controllerX;
StepControl controllerY;
StepControl controllerZ;

enum stateEnumUART {IDLE_UART, GET_UART , PASRE_UART, SEND_UART}stateEnumUART;
enum stateEnumMotor {IDLE_MOTOR, CONTROL_MOTOR , EMG_MOTOR, CHECK_MOTOR}stateEnumMotor;
enum stateDevice { IDLE1, RUNNING , WAITING , RESPONSE }stateDevice;

IntervalTimer tickTimer;
constexpr unsigned recalcPeriod = 25'000; //25ms ->25000µs  period for calculation of new target points. Straight lines between those points.
constexpr float dt = recalcPeriod / 1E6;  // seconds
unsigned long lastTimeBlinkLed = 0;
boolean stateLed = true;

typedef struct parameterMotorConf{
  unsigned long MaxSpeed;
  unsigned long  Accel;
  unsigned long  Pos;
}parameterMotor_t;

void tick()
{
  
}


void setup() {
  Serial.begin(115200);
  pinMode(13, OUTPUT);
  parameterMotor_t paraMotorX{20000,20000,0} , paraMotorY{20000,20000,0} , paraMotorZ{20000,20000,0} ;
  stateEnumUART = IDLE_UART;
  stateEnumMotor = IDLE_MOTOR;
  Serial.println("Simple Serial Stepper Example");    
  Serial.println("(type h for help)");
  tick();
  tickTimer.priority(255); // lowest priority, potentially long caclulations need to be interruptable by TeensyStep
  tickTimer.begin(tick, recalcPeriod);
    // setup the motors 
   motorX
    .setMaxSpeed(paraMotorX.MaxSpeed)       
    .setAcceleration(paraMotorX.Accel); 
  
  motorY
    .setMaxSpeed(paraMotorY.MaxSpeed)       
    .setAcceleration(paraMotorY.Accel);
  motorZ
    .setMaxSpeed(paraMotorZ.MaxSpeed)       
    .setAcceleration(paraMotorZ.Accel);    
}

void loop() {
  getUART();
  ControlMotor();
  if (millis() - lastTimeBlinkLed > 1000){
    lastTimeBlinkLed = millis();
    stateLed = !stateLed ;
    digitalWrite(13,stateLed);
  }
}
void getUART(){
  switch(stateEnumUART){
    case IDLE_UART:
      stateEnumUART = GET_UART;
      break;
    case GET_UART:
      if (getDataUART){
        stateEnumUART=PASRE_UART;
      }
      else 
        stateEnumUART=SEND_UART;
      break;
    case  PASRE_UART:
     pasreDataUART();
     stateEnumUART=SEND_UART;
     break;
    case SEND_UART:
      sendUART();
      stateEnumUART=GET_UART;
      break;
    default:
      break;
  }
}
void ControlMotor(){
  switch(stateEnumMotor){
    case IDLE_MOTOR:
      stateEnumMotor = CONTROL_MOTOR;
      break;
    case CONTROL_MOTOR:
      controlMotor();
      stateEnumMotor = CHECK_MOTOR;
      break;
    case EMG_MOTOR:
      emgMotor();
      break;
    case CHECK_MOTOR:
      checkMotor();
      stateEnumMotor = IDLE_MOTOR;
      break;
    default:
      break;
  }
}
