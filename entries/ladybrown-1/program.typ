#import "/template/template.typ": *

#show: create-entry.with(
  title: "Ladybrown v1",
  type: "program",
  date: datetime(year: 2024, month: 8, day: 14),
  attendance: ("Ajibola", "Jin", "Ishika", "Makhi", "Eric", "Rory"),
  designed: "Ajibola",
  witnessed: "Ishika",
)

#to-do(
  date: datetime(year: 2024, month: 8, day: 14),
  monthly-schedule: "Ahead",
  yearly-schedule: "Ahead",
  (
    (true, "Identify the design goals and constraints for the mobile goal clamp.", "Everyone"),
    (true, "Determine the mathematical and scientific concepts involved in clamp design.", "Everyone"),
  )
)

= Device Declaration
The ladybrown mechanism is controlled by two motors, and it has a rotation sensor attached to its main axle to track the angle of the ladybrown mechanism. We initialized objects to represent the two motors and the sensor in the program.

#code-header[src/global.cpp]
```cpp
pros::MotorGroup LadybrownMotors({19, -20});
pros::Rotation LadybrownRotation(18);
```

= Ladybrown Positions
The ladybrown mechanism switches between 3 positions:
- *Position 1* #sym.dash.em 360.00#sym.degree #sym.dash.em Initial/resting position
- *Position 2* #sym.dash.em 324.00#sym.degree #sym.dash.em Picking up ring from the intake
- *Position 3* #sym.dash.em 209.47#sym.degree #sym.dash.em Placing the ring on a stake

[Insert picture]

We created the `ladybrownPosition` integer variable to hold a number from 1-3 representing which position the ladybrown is moving towards. We also made the `LadybrownSwitch()` function to allow the driver to cycle through the 3 positions using two controller buttons.

#code-header[src/ladybrown.cpp]
```cpp
short int ladybrownPosition = 1;

void LadybrownSwitch(bool increase) {
    if (increase) {
        if (ladybrownPosition < 3) ladybrownPosition++;
        else ladybrownPosition = 1;
    } else {
        if (ladybrownPosition > 1) ladybrownPosition--;
        else ladybrownPosition = 3;
    }
}
```

#code-header[src/opcontrol.cpp]
```cpp
void opcontrol() {
	while (true) {
    // ... Non-relevant lines of code excluded
		
		// When the L1 controller button is pressed...
		if(Controller.get_digital_new_press(pros::E_CONTROLLER_DIGITAL_L1)) {
			// increase the ladybrown position by 1
			LadybrownSwitch(true);
		// When the L2 controller button is pressed...
		} else if(Controller.get_digital_new_press(pros::E_CONTROLLER_DIGITAL_L2)) {
			// decrease the ladybrown position by 1
			LadybrownSwitch(false);
		}
		
    // ... Non-relevant lines of code excluded

		pros::delay(20); // Run for 20 ms then update
	}
}
```

= Ladybrown Task
With the ladybrown setup complete, our next step was to get the ladybrown mechanism to move. During the match, the ladybrown would need to be able to move at the same time as the drivetrain and other motor-powered mechanisms are activated. To do this, we created a ladybrown *task*, which is a function that is able to run simultaneously with the main function (such as `autonomous()` during the autonomous phase or `opcontrol()` during the driver control phase).

#code-header[src/ladybrown.cpp]
```cpp
void LadybrownTask(void * param) {
    // Variable representing the ladybrown task
    pros::Task task = pros::Task::current();
}
```

After creating the task function, we made it so that the ladybrown task initializes in the beginning of the driver control phase. We also made it so that when the ladybrown position is changed, it sends a notification to the task.

#code-header[src/opcontrol.cpp]
```cpp
void opcontrol() {
	// Initializes the ladybrown task
	pros::Task ladybrown_task(LadybrownTask, (void*)"PROS");

	while (true) {
    // ... Non-relevant lines of code excluded
		
		// When the L1 controller button is pressed...
		if(Controller.get_digital_new_press(pros::E_CONTROLLER_DIGITAL_L1)) {
			// increase the ladybrown position by 1
			LadybrownSwitch(true);
			// notify the ladybrown mechanism to move to the new target position
			ladybrown_task.notify();
		// When the L2 controller button is pressed...
		} else if(Controller.get_digital_new_press(pros::E_CONTROLLER_DIGITAL_L2)) {
			// decrease the ladybrown position by 1
			LadybrownSwitch(false);
			// notify the ladybrown mechanism to move to the new target position
			ladybrown_task.notify();
		}

    // ... Non-relevant lines of code excluded

		pros::delay(20); // Run for 20 ms then update
	}
}
```

= Ladybrown Movement
To move the ladybrown mechanism, we decided to use a simple proportional algorithm, which multiplies the error (difference between the current and target ladybrown angles) by a constant variable.

#code-header[src/ladybrown.cpp]
```cpp
void LadybrownTask(void * param) {
    // Variable representing the ladybrown task
    pros::Task task = pros::Task::current();

    // The angle (in degrees) for each position
    const float position1 = 360;
    const float position2 = 324.00;
    const float position3 = 209.47;

    // Constant variable that is multiplied by the ladybrown angle error to determine ladybrown motor voltage
    const float kP = 150;

    // Initializes the variables needed for the ladybrown proportional movement algorithm
    double ladybrownAngle;
    double error;
    double targetAngle;
    short int power;
}
```