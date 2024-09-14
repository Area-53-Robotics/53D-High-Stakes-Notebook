#import "/template/template.typ": *

#show: create-entry.with(
  title: "Overall Robot",
  type: "brainstorm",
  date: datetime(year: 2024, month: 6, day: 14),
  attendance: ("Ajibola", "Jin", "Ishika", "Makhi", "Eric", "Rory"),
  designed: "Jin",
  witnessed: "Ajibola",
)

// Throughout the season, we have observed a large variety of elevation options, with each of them varying greatly in how they are constructed. We created a pros and cons list for each of them to organize our collective thoughts.

#pro-con(
  name: "Ajibola",
  image: image("/entries/overall-robot/brainstorm/ajibola-robot-idea.png"),
  description: [
    A three wheel drive, a four bar with a claw at the end for mobile goal manipulation and hang, an adjustable intake and a pneumatic clamp. 
  ],
  pros: [
    - *Balance* - The equally bulky intake and four-bar are on opposite sides of the robot, keeping the robot balanced.
    - *Stability* - The center of gravity of the robot is close to the ground, keeping the robot stable when driving.
    - Very defensive
  ],
  cons: [
    - *Inefficient Climbing* - The robot is likely to tilt backwards when climbing due to the clamp only supporting the elevated robot on the front.
  ],
  notes: [
    - 4-bar for climbing and putting rings on the high stake with the clamp
    - Back clamp for carrying a mogo
    - Intake 
  ],
)

#pro-con(
  name: "Jin Hao",
  image: image("/entries/overall-robot/brainstorm/jin-robot-idea.excalidraw.svg"),
  description: [
    A four wheel drive, Over Under flex wheel intake first stage, adjustable conveyor intake that can reach wall stakes, passive clamp, and a pneumatic clamp
  ],
  pros: [
    - *Traction* - The two traction wheels on the drivetrain 
    - Faster than the average robot speed
    - Space efficient
    - Electronics 
  ],
  cons: [
    - *Motor Temperature* - Having four wheels on the drivetrain instead of three will make the drivetrain motors heat up faster.
    - *Front Heavy* - The four-bar intake shifts the center of gravity towards the front of the robot, making it more prone to tipping.
  ],
  notes: [
    - 450 3.25” RPM
    - Pneumatic Mogo clamp
    - 4-bar intake to intake rings while also using to climb
    - Color sensor to filter out unwanted boxes
  ],
)

#colbreak()

#pro-con(
  name: "Makhi",
  image: image("/entries/overall-robot/brainstorm/makhi-robot-idea.excalidraw.svg"),
  description: [
    A two wheel drive, flex wheel intake to store the rings in chassis, a plunger like arm that can stick onto the rings and score them onto the rings.
  ],
  pros: [
    - *Rings* - The plunger system deposits rings onto stakes quickly, making it easier to score points and get top ring bonuses.
  ],
  cons: [
    - *Lacking Torque* - The lack of bulk on the robot makes it easy to push around
    - *Intake Joints* - The extra joints on the intake give it more possible points for failure
    - *Front Loaded* - The center of gravity shifts forwards when the intake is extended, increasing the possibility of the bot tipping over.
  ],
  notes: [
    - Flip-out lift
    - Intake intakes directly onto the flip
  ],
)

// #colbreak()

#pro-con(
  name: "Ishika",
  image: image("/entries/overall-robot/brainstorm/ishika-robot-idea.excalidraw.svg"),
  description: [
    A three wheel drive, a pneumatic clamp for mobile goals, an plunger to pick up rings, a pneumatic arm for hang.
  ],
  pros: [
    - Takes space into consideration.
    - Fast and Powerful
  ],
  cons: [
    - Pneumatics for the climb mech may be less powerful. 
    - Expansion might not be very great. 
    - Hang mech can cause interference with intake.
    - Chain can break
  ],
  notes: [
    - 450 3.25
    - Mogo clamp
    - Climb mech uses grappler shape.
    - 4 motor drive
    - 1 motor intake
    - Climb mech uses Pneumatics

  ],
)
#colbreak()


#pro-con(
  name: "Eric",
  image: image("/entries/overall-robot/brainstorm/eric-robot-idea.excalidraw.svg"),
  description: [
    A 4 wheel drive, a conveyor that picks up ring and drop it into the mobile goal, a clamp to secure the mobile goal.
  ],
  pros: [
    - *Compact* - There are no extendable subsystems, so the robot stays compact and lithe.
    - *Electronics Placement* - The electronics are all in safe places, while also being mostly close to the robot's center of gravity.
  ],
  cons: [
    - *Accessibility* - Hard to access the interior of the robot for fixes and tuning.
  ],
  notes: [
    - Four bar used for overtaking and climbing 
    - 450 3,25” 
    - Mogo clamp
    - Motor Usage:
      - 6 motor drive
      - 1 motor 4-bar
      - 1 motor intake
      - 2 piston mogo mech
  ],
)

#pro-con(
  name: "Rory",
  image: image("/entries/overall-robot/brainstorm/rory-robot-idea.excalidraw.svg"),
  description: [
    A 4 wheel drive, an adjustable conveyor with a passive hang on the end, an conveyor that picks up rings and a pneumatic mobile goal clamp
  ],
  pros: [
    - Good radio placement
    - Multipurpose parts and motors
    - Quick Climb
  ],
  cons: [
    - Chain can break
    - Battery can fall out
    - Climb mech is difficult to aim
  ],
  notes: [
    - 6 Motor drive
    - 4 wheels to a side
    - Intake on climbing arm
    - Centralized Brain and Battery
  ],
)
