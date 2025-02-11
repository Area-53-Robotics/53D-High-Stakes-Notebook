#import "/template/template.typ": *

#show: create-entry.with(
  title: "Ladybrown v1",
  type: "program",
  date: datetime(year: 2024, month: 11, day: 15),
  attendance: ("Ajibola", "Jin", "Ishika", "Makhi", "Eric", "Rory"),
  designed: "Ajibola",
  witnessed: "Ishika",
)

#to-do(
  date: datetime(year: 2024, month: 11, day: 15),
  monthly-schedule: "Ahead",
  yearly-schedule: "Ahead",
  (
    (true, "Program the ladybrown.", ("Ajibola", "Ishika")),
    (true, "Test the ladybrown.", "Everyone"),
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

#image("program/ladybrown-positions.excalidraw.svg", height: 255pt)

We created the `ladybrownPosition` integer variable to hold a number from 1-3 representing which position the ladybrown is moving towards. We also made the `LadybrownSwitch()` function to allow the driver to cycle through the 3 positions by using the `L1` button to move the ladybrown down and the `L2` button to move the ladybrown up.

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
With the ladybrown program setup complete, our next step was to get the ladybrown mechanism to move. During the match, the ladybrown needs to be able to move at the same time as the drivetrain and other motor-powered mechanisms. To do this, we created a ladybrown *task*, which is a function that is able to run simultaneously with the main function (such as `autonomous()` during the autonomous phase or `opcontrol()` during the driver control phase).

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

We initialized variables to hold the target ladybrown angles for each position, as well as the variables that we would need for the ladybrown algorithm.

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

With the preliminary lines of code completed, were were able to start writing the code that would actually loop in the ladybrown task during the match.

We wanted the ladybrown algorithm to begin everytime one of the ladybrown buttons was pressed. To do this, we made each task loop wait for the task notification that is sent when one of the ladybrown buttons is pressed.

#code-header[src/ladybrown.cpp]
```cpp
void LadybrownTask(void * param) {
    // ... Non-relevant lines of code excluded

    while(true) {
        // Waits to start moving the ladybrown until after the driver has pushed one of the ladybrown controller buttons
        while(task.notify_take(true, 10));
    }
}
```

Right before the ladybrown algorithm begins, the program needs to obtain information such as what the new target angle is, what the current angle is, and what the difference between them is (the error). We did this using the following code:

#code-header[src/ladybrown.cpp]
```cpp
void LadybrownTask(void * param) {
    // ... Non-relevant lines of code excluded

    while(true) {
        // Waits to start moving the ladybrown until after the driver has pushed one of the ladybrown controller buttons
        while(task.notify_take(true, 10));

        // Variable to track how long the ladybrown movement is taking
        int timeout = 0;
        
        // Sets the ladybrown target angle based on the target position
        switch(ladybrownPosition) {
            case 1:
                targetAngle = position1;
                break;
            case 2:
                targetAngle = position2;
                break;
            case 3:
                targetAngle = position3;
                break;
        }

        // Obtains the angle of the ladybrown in degrees
        ladybrownAngle = LadybrownRotation.get_angle() / 100.0;
        // Calculates the error (difference) between the target ladybrown angle and the current ladybrown angle
        error = targetAngle - ladybrownAngle;
    }
}
```

With this information, the ladybrown movement algorithm could begin. We made a new loop within the ladybrown task loop for the ladybrown movement algorithm, which continues until one of the following conditions is met:
- The error is below 0.01#sym.degree.
- The ladybrown movement algorithm has been activated for 10000 msec (10 seconds).

At the beginning of each loop of the movement algorithm, the same data collection we did before beginning the loop repeats. This serves two purposes:
+ It updates the movement algorithm on what the current ladybrown angle is so that it can act accordingly.
+ It updates the ladybrown target angle as a failsafe, so that if the driver presses one of the ladybrown controller buttons before the ladybrown movement was completed, the ladybrown movement algorithm can account for the new target.

At this point, we realized that there was a potential problem with our algorithm. The initial position/position 1 for the ladybrown mechanism is at 360#sym.degree as reported by the rotation sensor. However, if the ladybrown mechanism were to go past the 360#sym.degree angle, the rotation sensor would restart at 0#sym.degree. Because the error calculation in our movement algorithm is just the target angle minus the current angle of the ladybrown, the ladybrown movement algorithm would treat 360#sym.degree significantly differently than 1#sym.degree, even if they are actually just 1#sym.degree apart. We solved this by creating a "wrap-around," where any angle from 1#sym.degree - 50#sym.degree is treated by the algorithm as 361#sym.degree - 410#sym.degree.

#image("program/ladybrown-wraparound.excalidraw.svg", height: 230pt)

We incorporated all of these components using the following code:

#code-header[src/ladybrown.cpp]
```cpp
void LadybrownTask(void * param) {
    // ... Non-relevant lines of code excluded

    while(true) {
        // Waits to start moving the ladybrown until after the driver has pushed one of the ladybrown controller buttons
        while(task.notify_take(true, 10));

        // ... Non-relevant lines of code excluded

        // The ladybrown will move toward the target point while the error is greater than 0.01 degrees or until the movement has lasted for 10,000 msec
        while((std::abs(error) > 0.01) && (timeout < 10000)) {
            // Sets the ladybrown target angle based on the target position
            switch(ladybrownPosition) {
                case 1:
                    targetAngle = position1;
                    break;
                case 2:
                    targetAngle = position2;
                    break;
                case 3:
                    targetAngle = position3;
                    break;
            }

            // Obtains the angle of the ladybrown in degrees
            ladybrownAngle = LadybrownRotation.get_angle() / 100.0;
            // If the ladybrown passes the 360 degree mark, it will treat angles 1-50 degrees as 361-410 degrees
            if (ladybrownAngle < 50) ladybrownAngle = 360 + ladybrownAngle;
            // Calculates the error (difference) between the target ladybrown angle and the current ladybrown angle
            error = targetAngle - ladybrownAngle;
        }

        // Delays the continuation of the loop by 20 msec to free VEX brain resources
        pros::Task::delay(20);
    }
}
```

Then, we were able to program the core of the movement algorithm. We calculate the power output of the ladybrown motors as the error times the proportional constant $K_p$.

#code-header[src/ladybrown.cpp]
```cpp
void LadybrownTask(void * param) {
    // ... Non-relevant lines of code excluded

    while(true) {
        // Waits to start moving the ladybrown until after the driver has pushed one of the ladybrown controller buttons
        while(task.notify_take(true, 10));

        // ... Non-relevant lines of code excluded

        // The ladybrown will move toward the target point while the error is greater than 0.01 degrees or until the movement has lasted for 10,000 msec
        while((std::abs(error) > 0.01) && (timeout < 10000)) {
            // ... Non-relevant lines of code excluded

            // Calculate the appropriate voltage output for the ladybrown motors
            power = error * kP;
            // Set the ladybrown motors to move according to the calculated voltage
            LadybrownMotors.move_voltage(power);

            // Delays the continuation of the loop by 20 msec to free VEX brain resources
            timeout += 20;
            pros::Task::delay(20);
        }

        // Delays the continuation of the loop by 20 msec to free VEX brain resources
        pros::Task::delay(20);
    }
}
```

#admonition(type: "test", title: "Proportional Algorithm Tuning")[
  To complete our ladybrown movement algorithm, we had to tune it by adjusting the ```cpp kP``` variable. We repeated the following steps to do so:
  1. Set a test target angle
  2. Activate the ladybrown algorithm
  3. Do one of the following:
    - If the ladybrown mechanism did not reach the target angle, increase ```cpp kP```
    - If the ladybrown mechanism overshot the target angle or oscillated around the target angle, decrease ```cpp kP```
  4. Repeat steps 1-3 until the ladybrown mechanism has a small amount of error after it moves to the target point

  After completing this procedure, we ended with a ```cpp kP``` value of 150.
]

By tuning ```cpp kP```, we completed the ladybrown movement task. Here is the completed code:

#code-header[src/ladybrown.cpp]
```cpp
void LadybrownTask(void * param) {
    // Variable representing the ladybrown task
    pros::Task task = pros::Task::current();

    // The angle (in degrees) for each ladybrown position
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

    while(true) {
        // Waits to start moving the ladybrown until after the driver has pushed one of the ladybrown controller buttons
        while(task.notify_take(true, 10));

        // Variable to track how long the ladybrown movement is taking
        int timeout = 0;
        
        // Sets the ladybrown target angle based on the target position
        switch(ladybrownPosition) {
            case 1:
                targetAngle = position1;
                break;
            case 2:
                targetAngle = position2;
                break;
            case 3:
                targetAngle = position3;
                break;
        }

        // Obtains the angle of the ladybrown in degrees
        ladybrownAngle = LadybrownRotation.get_angle() / 100.0;
        // Calculates the error (difference) between the target ladybrown angle and the current ladybrown angle
        error = targetAngle - ladybrownAngle;

        // The ladybrown will move toward the target point while the error is greater than 0.01 degrees or until the movement has lasted for 10,000 msec
        while((std::abs(error) > 0.01) && (timeout < 10000)) {
            // Sets the ladybrown target angle based on the target position
            switch(ladybrownPosition) {
                case 1:
                    targetAngle = position1;
                    break;
                case 2:
                    targetAngle = position2;
                    break;
                case 3:
                    targetAngle = position3;
                    break;
            }

            // Obtains the angle of the ladybrown in degrees
            ladybrownAngle = LadybrownRotation.get_angle() / 100.0;
            // If the ladybrown passes the 360 degree mark, it will treat angles 1-50 degrees as 361-410 degrees
            if (ladybrownAngle < 50) ladybrownAngle = 360 + ladybrownAngle;
            // Calculates the error (difference) between the target ladybrown angle and the current ladybrown angle
            error = targetAngle - ladybrownAngle;
            // Calculate the appropriate voltage output for the ladybrown motors
            power = error * kP;
            // Set the ladybrown motors to move according to the calculated voltage
            LadybrownMotors.move_voltage(power);

            // Delays the continuation of the loop by 20 msec to free VEX brain resources
            timeout += 20;
            pros::Task::delay(20);
        }

        // Delays the continuation of the loop by 20 msec to free VEX brain resources
        pros::Task::delay(20);
    }
}
```