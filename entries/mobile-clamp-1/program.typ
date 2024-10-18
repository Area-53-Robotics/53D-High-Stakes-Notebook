#import "/template/template.typ": *

#show: create-entry.with(
  title: "Mobile Goal Clamp v1",
  type: "program",
  date: datetime(year: 2024, month: 8, day: 24),
  attendance: ("Ajibola", "Jin", "Ishika", "Makhi", "Eric", "Rory"),
  designed: "Ajibola",
  witnessed: "Ishika",
)

= Device Declaration:
  First, we declared the clamp pneumatics as a global object so that it can be used in the program. 
  #code-header[src/global.cpp] 
```cpp
  //Declares the clamp piston and sets it to adi port A
  pros::adi::DigitalOut ClampPistons(1);

```
= Clamp Movement:
  Now that the object has been made, we moved on to programming the actual clamp movement. We created a file, clamp.cpp to store all of the clamp-related variables and functions. We quickly realized after reading the PROS API that the pros::adi::DigitalOut class does not have a function for users to get the current value (0 or 1) of the object. While we could theoretically make the clamp toggleable without this information readily available to us, this could hinder our ability to make more advanced usage of the clamp later on, such as for autonomous routines. To solve this problem, we created a boolean variable to store whether the clamp’s pneumatic pistons have been activated. We plan to update this variable every time the position of the clamp is changed (ex. from outset to inset) so we can keep track of the state of the clamp.
  #code-header[src/subsystemFiles/clamp.cpp] 
```cpp
  // creates a boolean variable that sets the variable to false
  bool clampPistonsActivated = false;
  
```
 == Toggle Code:
 With this roadblock overcome, we were able to make the clamp toggleable with the following code:
  #code-header[src/subsystemFiles/clamp.cpp] 
 ```cpp
  void PneumaticClamp() {
    //sets the variable defined above to true
    if (!clampPistonsActivated) {
        ClampPistons.set_value(1);
        clampPistonsActivated = true;
    } else {
     //keeps the variable defined above to false 
        ClampPistons.set_value(0);
        clampPistonsActivated = false;
    }
}
```

== Driver Control 
Now all that was left was to make the clamp usable during drive control. We did this using the following code:
#code-header[src/main.cpp] 
 ```cpp
  // sets the clamp to operate in driver control after pressing the A button
		if(Controller.get_digital_new_press(pros::E_CONTROLLER_DIGITAL_A)) PneumaticClamp();
```