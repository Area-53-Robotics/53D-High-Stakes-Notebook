#import "/template/template.typ": *

#show: create-entry.with(
  title: "Intake v1",
  type: "program",
  date: datetime(year: 2024, month: 9, day: 27),
  attendance: ("Ajibola", "Jin", "Ishika", "Makhi", "Eric", "Rory", "Anders"),
  designed: "Ishika",
  witnessed: "Ajibola",
)

#to-do(
  date: datetime(year: 2024, month: 9, day: 27),
  monthly-schedule: "Behind",
  yearly-schedule: "Ahead",
  (
    (true, "Program the intake.", ("Ajibola", "Ishika")),
    (true, "Test the intake.", "Everyone"),
  )
)

= Intake Driver Control
First, we declared a global intake motor class to use throughout the program.

#code-header[src/global.cpp]
```cpp
// Declares the intake motor and sets it to port 9
pros::Motor IntakeMotor(9, pros::v5::MotorGears::blue);
```

= Completed Intake Driver Control Code
Using the declarations that were made, the Intake was programmed to operate under driver control. The intake has two motions one which takes in the ring and the other that outtakes the ring.

#code-header[src/main.cpp]
```cpp
// if-else statement that move the intake motor positive when R2 is pressed and negative when R1 is pressed. 
if(Controller.get_digital(pros::E_CONTROLLER_DIGITAL_R2)) IntakeMotor.move_velocity(600);
else if(Controller.get_digital(pros::E_CONTROLLER_DIGITAL_R1)) IntakeMotor.move(-127);
else IntakeMotor.brake();
```