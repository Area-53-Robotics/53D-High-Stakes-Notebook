#import "/template/template.typ": *

#show: create-entry.with(
  title: "Redirect Mech v1",
  type: "program",
  date: datetime(year: 2024, month: 10, day: 18),
  attendance: ("Ajibola", "Jin", "Ishika", "Makhi", "Eric", "Rory", "Anders"),
  designed: "Ishika",
  witnessed: "Ajibola",
)

#to-do(
  date: datetime(year: 2024, month: 10, day: 18),
  monthly-schedule: "Behind",
  yearly-schedule: "Ahead",
  (
    (true, "Program the Redirect Mech.", ("Ajibola", "Ishika")),
    (true, "Test the Redirect Mech.", "Everyone"),
  )
)

= Redirect Motor Declaration
First, we declared a global redirect motor class, which will allow us to control the redirect mechanism throughout the program.

#code-header[src/global.cpp]
```cpp
// Declares the redirect  motor and sets it to port 15
pros:: Motor RedirectMotor(15,pros::v5::MotorGears::red);
```

= Redirect Mech Driver Control
Then, we programmed the redirect mechanism to operate during driver control.  The redirect mechanism moves upwards when the ``` L1``` button is held and moves downwards when the ``` L2``` button is held. When neither button is being held, the redirect mechanism holds its position.

#code-header[src/main.cpp]
```cpp
// The redirect motor spins forward when L1 is held and spins reverse when L2 is held.
if(Controller.get_digital(pros::E_CONTROLLER_DIGITAL_L1))
  RedirectMotor.move_velocity(127);
else if(Controller.get_digital(pros::E_CONTROLLER_DIGITAL_L2))
  RedirectMotor.move_velocity(-127);
else RedirectMotor.brake();
```