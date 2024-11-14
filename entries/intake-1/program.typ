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
First, we declared a global intake motor object to use throughout the program.

#code-header[src/global.cpp]
```cpp
// Declares the intake motor and sets it to port 9
pros::Motor IntakeMotor(9, pros::v5::MotorGears::blue);
```

= Completed Intake Driver Control Code
Next, we programmed the intake to operate during driver control. The intake has two motions: a forward spin to take in rings and a reverse spin to outtake rings.

#code-header[src/main.cpp]
```cpp
// The intake motor spins forward when R2 is held and spins reverse when R1 is held.
if(Controller.get_digital(pros::E_CONTROLLER_DIGITAL_R2)) IntakeMotor.move_velocity(600);
else if(Controller.get_digital(pros::E_CONTROLLER_DIGITAL_R1)) IntakeMotor.move_velocity(-600);
else IntakeMotor.brake();
```