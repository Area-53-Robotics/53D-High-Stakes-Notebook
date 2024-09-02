#import "/template/template.typ": *

#show: create-entry.with(
  title: "Pre-Auton Menu",
  type: "program",
  date: datetime(year: 2024, month: 8, day: 23),
  attendance: "Ajibola, Ishika",
  designed: "Ajibola",
  witnessed: "Ishika",
)

#to-do(
  date: datetime(year: 2024, month: 8, day: 23),
  (
    (true, "Program a versatile Pre-Auton menu for the VEX brain"),
  )
)

#let brain-image(body, width: 350pt) = {
  align(center)[
    #box[
      #image("/assets/brain.png", width: width)
      #place(dx: width * 0.119, dy: width * -0.5488)[
        #box(radius: 3pt, clip: true)[
          #image(body, width: width * 0.675)
        ]
      ]
    ]
  ]
}

= Intro
Before a tournament match, there is an empty period of time where robots are being set up on the field, which we call the _pre-autonomous_ phase of the match. To utilize this time, we decided to make a pre-auton menu for the VEX brain screen that allows the drive team members to obtain important information about the robot before the match.

#admonition(type: "brainstorm", title: "Sub-Brainstorm: Pre-Auton Menu Functionality")[
We brainstormed some functionalities that we wanted in the pre-autonomous menu:
- Autonomous selection - allowing for quick switching the selected autonomous before a match without requiring a re-upload of the code, streamlining preparation time in between competition matches.
- Motor monitoring - a method to check if each motor is plugged in, if the motor is over the temperature limit, and other important motor telemetry information.
- Sensor display - a screen to check the values being returned by our sensors.
- Keybind display - a screen displaying all the controls of the robot.
- Notes section - a place to write down any urgent messages or notes the drive team should be aware of before the match starts.
]

To do this, we installed version 8.3.6 of LVGL #glossary-footnote[LVGL] by running the following command:

```sh
pros c apply liblvgl@8.3.6 --beta
```

The development process of the Pre-Autonomous menu was planned out to be the following steps:
+ Create the base layout

= Base Layout
The first step was to create a dropdown selection menu for the different tabs in the Auton Selector.

```cpp
void CreateMenuDropdown()
{
    /*Create a drop down list*/
    lv_obj_t * menuDropdown = lv_dropdown_create(lv_layer_top());
    lv_obj_set_size(menuDropdown, 160, 40);
    lv_obj_align(menuDropdown, LV_ALIGN_TOP_LEFT, 5, 5);
    lv_dropdown_set_options(menuDropdown, "Autons\n"
                            "Motors\n"
                            "Sensors\n"
                            "Keybinds\n"
                            "Notes");

    /*In a menu we don't need to show the last clicked item*/
    lv_dropdown_set_selected_highlight(menuDropdown, false);

    lv_obj_add_event_cb(menuDropdown, MenuDropdownCB, LV_EVENT_VALUE_CHANGED, NULL);
}
```

This creates a dropdown menu that looks like this:
#brain-image("program/menu-dropdown.png")

To add functionality to each button, I created a callback function that is triggered every time an option in the dropdown is selected:

```cpp
void MenuDropdownCB(lv_event_t * e)
{
    lv_obj_t * dropdown = lv_event_get_target(e);
    char selected[64];
    lv_dropdown_get_selected_str(dropdown, selected, sizeof(selected));

    if(strcmp(selected, "Autons") == 0) OpenAutonSelectMenu();
    else if (strcmp(selected, "Motors") == 0) OpenMotorMenu();
    else if (strcmp(selected, "Sensors") == 0) OpenSensorMenu();
    else if (strcmp(selected, "Keybinds") == 0) OpenKeybindMenu();
    else if (strcmp(selected, "Notes") == 0) OpenNotesMenu();
}
```

The next step was to make a text display area that would be consistent between the screens of the menu. I did this by creating a rectangle object with a set width for the text that could be displayed in it:

```cpp
lv_obj_t * menuRectangle;

void CreateMenuRectangle() {
    menuRectangle = lv_obj_create(lv_scr_act());
    lv_obj_set_size(menuRectangle, 305, 230);
    lv_obj_align(menuRectangle, LV_ALIGN_TOP_RIGHT, -5, 5);

    lv_obj_t * label1 = lv_label_create(menuRectangle);
    lv_obj_align(label1, LV_ALIGN_TOP_LEFT, 0, 0);
    lv_obj_set_width(label1, 269);  /*Set smaller width to make the lines wrap*/
    lv_label_set_long_mode(label1, LV_LABEL_LONG_WRAP);
    lv_label_set_text(label1, "");
}
```

With this, the base layout was completed:
#brain-image("program/menu-rectangle.png")

= Auton Creation
We wanted to make the auton selection screen automatically add buttons for each auton that has been added to the program, without having to re-edit the code for the auton selector. However, to do this, we needed to give the program a way to identify all of the autons that have been programmed. To do this, we implemented an object-oriented program structure for creating autons. We created a "framework" for the autons known as a _class_, as well as a _constructor_ for creating the auton classes.

== Auton Class
#code-header[include/global.hpp]
```cpp
class Auton {
	public:
		// Increases everytime an auton is created, allowing us to assign a unique number identifier to each auton
    static unsigned short int autonCount;

		// The name of the auton, assigned by the programmer via the constructor
		const char * name;
		// The description for the auton that will be seen on the auton selector, assigned by the programmer via the constructor
		const char * description;
		// The number identifier for the auton, automatically calculated in the constructor
		int autonNum;
		// The actions performed during the auton, assigned by the programmer via the constructor
		std::function<void()> routine;

		// The constructor to create a new auton
    Auton(const char * autonName, const char * autonDescription, std::function<void()> autonRoutine);
};
```

== Auton Constructor
#code-header[src/autonomous.cpp]
```cpp
/*
  The constructor to create a new auton

  Parameters:
  - autonName: String containing the name of the auton
  - autonDescription: String containing the description for the auton
  - autonRoutine: Function containing the actions to be performed in the auton
*/
Auton::Auton(const char * autonName, const char * autonDescription, std::function<void()> autonRoutine) {
  // Assigns the name of the auton to what the programmer enters
  name = autonName;
  // Assigns the description of the auton to what the programmer enters
  description = autonDescription;
  // Assigns the routine performed by the auton to the actions entered by the programmer
  routine = autonRoutine;
  // Assigns the auton's unique number id
  autonNum = autonCount;
  // Increments the count of current autons
  autonCount += 1;

  // Initializes a new button for the auton on the auton selector
  AutonButtons.push_back(new lv_obj_t);
  // Adds the new auton object to the list of created auton objects
  AutonObjectList.push_back(*this);
}
```

#admonition(type: "note")[
  The variable ```cpp autonCount``` is a _static_ variable, meaning that there is only one instance of it among all the ```cpp Auton``` classes. By incrementing this variable every time a new auton is made, we assign a unique number identifier to each ```cpp Auton``` object.
]

= Autonomous Selection Screen
The autonomous selection screen was the primary reason for the creation of the Pre-Auton Menu, so a lot of time was dedicated to creating it.

First, we created a main function to load all of the components of the screen:

```cpp
void OpenAutonSelectMenu() {
  lv_scr_load_anim(autonScr, LV_SCR_LOAD_ANIM_NONE, 0, 0, false);

  CreateAutonList();
  CreateMenuRectangle();

  if(autonSelect == 1) lv_event_send(leftQualsBtn, LV_EVENT_CLICKED, NULL);
  else if(autonSelect == 2) lv_event_send(rightQualsBtn, LV_EVENT_CLICKED, NULL);
  else if(autonSelect == 3) lv_event_send(leftElimsBtn, LV_EVENT_CLICKED, NULL);
  else if(autonSelect == 4) lv_event_send(rightElimsBtn, LV_EVENT_CLICKED, NULL);
  else if(autonSelect == 5) lv_event_send(fullAWPBtn, LV_EVENT_CLICKED, NULL);
  else if(autonSelect == 6) lv_event_send(noAutonBtn, LV_EVENT_CLICKED, NULL);
  else if(autonSelect == 7) lv_event_send(pSkillsBtn, LV_EVENT_CLICKED, NULL);
}
```

I then created a list menu that contains the buttons to select an auton.
```cpp
```

= Motor Telemetry Screen
= Sensor Telemetry Screen
= Keybind Display Screen
= Notes Display Screen