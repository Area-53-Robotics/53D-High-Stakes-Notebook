#import "/template/template.typ": *

#show: codly-init.with()

#show: create-entry.with(
  title: "Pre-Auton Menu",
  type: "program",
  date: datetime(year: 2024, month: 8, day: 23),
  attendance: ("Ajibola", "Ishika"),
  designed: "Ajibola",
  witnessed: "Ishika",
)

#to-do(
  date: datetime(year: 2024, month: 8, day: 23),
  (
    (true, "Program a versatile Pre-Auton menu for the VEX brain.", ("Ajibola", "Ishika")),
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

#admonition(type: "plan", title: "Sub-Plan: Pre-Auton Menu Development")[
  The development process of the Pre-Autonomous menu was planned out to be the following steps:
  + Install the LVGL library
  + Create the base screen layout
  + Create screens for each of the functionalities we brainstormed
]

To do this, we installed version 8.3.6 of LVGL #glossary-footnote[LVGL] by running the following command:

```sh
pros c apply liblvgl@8.3.6 --beta
```

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

To add functionality to each button, we created a callback function that is triggered every time an option in the dropdown is selected:

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

The next step was to make a text display area that would be consistent between the screens of the menu. we did this by creating a rectangle object with a set width for the text that could be displayed in it:

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

First, we created a list that contains buttons for all of the available autons:
#code-header[src/brainMenus/autonMenu.cpp]
```cpp
void CreateAutonList()
{
    // Creates an empty list object
    autonList = lv_list_create(autonScr);
    // Sets the size of the list to 160px wide by 185px tall
    lv_obj_set_size(autonList, 160, 185);
    // Aligns the list to the top right of the screen, offset by 5px to the right and 50px down
    lv_obj_align(autonList, LV_ALIGN_TOP_LEFT, 5, 50);

    // For each autonomous...
    for (int i = 0; i < Auton::autonCount; i++) {
        // Create a button for the autonomous in the button list
        AutonButtons[i] = lv_list_add_btn(autonList, NULL, AutonObjectList[i].name);
        // Assign a callback event that is triggered when the button is pressed
        lv_obj_add_event_cb(AutonButtons[i], AutonListCB, LV_EVENT_CLICKED, NULL);
    }
}
```

After creating the buttons, we still needed to give them functionality. To do this, we created a callback function that is called everytime one of the auton buttons is pressed.

#code-header[src/brainMenus/autonMenu.cpp]
```cpp
void AutonListCB(lv_event_t * e)
{
    // Stores the pointer to the button that triggered the callback event
    lv_obj_t * obj = lv_event_get_target(e);
    // Stores the pointer to the label object on the rectangle
    lv_obj_t * label = lv_obj_get_child(menuRectangle, 0);

    // We need to determine which auton corresponds with the button that was pressed, so we iterate through each available auton
    for(int i = 0; i < Auton::autonCount; i++) {
        // Then, we compare the name of the button to the auton name we are testing, and if they are the same...
        if(strcmp(lv_list_get_btn_text(autonList, obj), AutonObjectList[i].name) == 0) {
            // We set the id of the newly selected auton into the global autonSelect variable
            autonSelect = i;
            // Then we load the description of the auton onto the rectangle on the brain screen
            lv_label_set_text(label, AutonObjectList[i].description);
            // Only one auton button could have been pressed, so we can stop iterating through the available autons now
            break;
        }
    }
}
```

Lastly, we created a main function to load all of the components of the auton screen. This function gets called when the Pre-Auton menu is first initialized and everytime the "Autons" button in the Pre-Auton menu dropdown is pressed.

#code-header[src/brainMenus/autonMenu.cpp]
```cpp
void OpenAutonSelectMenu() {
    // Loads the auton select screen
    lv_scr_load_anim(autonScr, LV_SCR_LOAD_ANIM_NONE, 0, 0, false);

    // Loads the auton button list
    CreateAutonList();
    // Loads the rectangle that will display auton descriptions
    CreateMenuRectangle();

    // Loads the description for the currently selected auton onto the screen
    for (int i = 0; i < Auton::autonCount; i++) {
        if(autonSelect == i) {
            lv_event_send(AutonButtons[i], LV_EVENT_CLICKED, NULL);
            break;
        }
    }
}
```

When the auton screen main function is called, the brain display looks like this:
#brain-image("program/auton-screen.png")

= Motor Telemetry Screen
The purpose of this screen of the Pre-Auton menu is to monitor key motor information before the round. Most importantly, we want to be able to verify that the motors are plugged in and that they are at a safe temperature.

== Motor Object Management
Similar to the auton selection screen, in order for the motor telemetry screen to display motor information, the program needs the following information:
- List of the motor names
- List of the motor objects
- List of the motor groups (objects that control more than one motor)

To store the lists of motor names, motor objects, and motor groups, we created arrays that can be manually edited by our programmers.

#code-header[src/global.cpp]
```cpp
// Array that stores strings representing the name of each motor
std::array<std::string,7> MotorNameList = {"BL", "ML", "FL", "BR", "MR", "FR", "Intake"};
// Array that stores pointers to all the independent motor objects
std::array<pros::Motor*,1> MotorObjectList = {&IntakeMotor};
// Array that stores pointers to all the motor groups
std::array<pros::MotorGroup*,2> MotorGroupObjectList = {&left_mg, &right_mg};
```

Next, the program needs to have a list of the number of motors in each motor group, as well as the total number of motors. To do this, when the robot program is started, a function automatically calculates those numbers.

#code-header[src/global.cpp]
```cpp
void InitMotorArraySizes() {
    // Obtain the number of motors in each motor group
    for(pros::MotorGroup* motorGroup : MotorGroupObjectList) {
        MotorArraySizes.push_back(motorGroup->size());
    }
    // Obtain the number of independent motor objects
    MotorArraySizes.push_back(MotorObjectList.size());

    // Accumulate the motor counts into one variable, representing the total number of motors
    for(int size : MotorArraySizes) {
        motorCount += size;
    }
}
```

== Motor Telemetry Table
// Might want to make heading scheme between auton screen and motor screen documentation consistent 

#code-header[src/brainMenus/motorMenu.cpp]
```cpp
void CreateMotorTable() {
    // Creates the motor telemetry table
    motorTable = lv_table_create(motorScr);

    // Sets the number of rows in the table to the number of motors
    lv_table_set_row_cnt(motorTable, motorCount);
    // Sets the number of columns in the table to 4 (motor name & 3 telemetry values)
    lv_table_set_col_cnt(motorTable, 4);

    // Sets the width of the first column to 74px and the width of the other 3 columns to 76px
    lv_table_set_col_width(motorTable, 0, 74);
    lv_table_set_col_width(motorTable, 1, 76);
    lv_table_set_col_width(motorTable, 2, 76);
    lv_table_set_col_width(motorTable, 3, 76);

    // Sets the size of the table to 305px wide by 230px tall 
    lv_obj_set_size(motorTable, 305, 230);
    // Adjusts the vertical padding of the text in the cells depending on the number of rows in the table
    lv_obj_set_style_pad_ver(motorTable, (111 / motorCount) - 5, LV_PART_ITEMS);
    // Sets the horizontal padding of the text in the cells to 2px
    lv_obj_set_style_pad_hor(motorTable, 2, LV_PART_ITEMS);
    // Sets the font in the table to Montserrat size 10
    lv_obj_set_style_text_font(motorTable, &lv_font_montserrat_10, LV_PART_ITEMS);
    // Aligns the table to the top right of the screen, offset by 5px to the left and 5px down
    lv_obj_align(motorTable, LV_ALIGN_TOP_RIGHT, -5, 5);

    // Adds an event callback to to apply the custom drawing (style) to the cells
    lv_obj_add_event_cb(motorTable, MotorTableCB, LV_EVENT_DRAW_PART_BEGIN, NULL);

    // Fills the cells in the first row of the table with motor names
    for(int i = 0; i < motorCount; i++) {
        lv_table_set_cell_value_fmt(motorTable, i, 0, "%s", MotorNameList[i].c_str());
    }

    // Calls the function that will display the temperature of the motors in the red column of the table
    UpdateRedColumn(true);
    // Calls the function that will display the velocity of the motors in the blue column of the table
    UpdateBlueColumn(true);
    // Calls the function that will display the torque of the motors in the yellow column of the table
    UpdateYellowColumn(true);
}
```

= Sensor Telemetry Screen
= Keybind Display Screen
= Notes Display Screen