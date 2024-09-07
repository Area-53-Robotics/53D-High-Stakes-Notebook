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
  image:  image("/assets/brain.png"),
  description: [
    A three wheel drive, a four bar with a claw at the end for mobile goal manipulation and hang, am adjustable intake and a pneumatic clamp. 
  ],
  pros: [
    - Center of gravity is closer to the center of the robot due to the bulky 4-bar and intake
    - Stable
    - Very defensive
  ],
  cons: [
    - Climbing would be very inefficient, as it would tilt backwards
    - Slow drivetrain
    - Unsupported parts
  ],
  notes: [
    - 4-bar for climbing and putting rings on the high stake with the clamp
    - Back clamp for carrying a mogo
    - Intake 
  ],
)

#pro-con(
  name: "Jin Hao",
  image: image("/assets/brain.png"),
  description: [
    A four wheel drive, Over Under flex wheel intake first stage, adjustable conveyor intake that can reach wall stakes, passive clamp, and a pneumatic clamp
  ],
  pros: [
    - Faster than the average robot speed
    - Space efficient
    - Electronics 
 
  ],
  cons: [
    - Front heavy
    - Load heavy - so it's a faster burn out time
 
  ],
  notes: [
    - 450 3.25” RPM
    - Pneumatic Mogo clamp
    - 4-bar intake to intake rings while also using to climb
    - Color sensor to filter out unwanted boxes

  ],
)

// #colbreak()

#pro-con(
  name: "Makhi",
  image: image("/assets/brain.png"),
  description: [
    A two wheel drive, flex wheel intake to store the rings in chassis, a plunger like arm that can stick onto the rings and score them onto the rings.
  ],
  pros: [
    - More accurate overtaking on the high stake
    - Possibilities to descore

  ],
  cons: [
    - Easy to push around
    - More joints - more points of failure
    - Harder to control
    - Front Loaded when the intake is extended outwards, prone to tipping
 
  ],
  notes: [
    - Flip-out lift
    - Intake intakes directly onto the flip

  ],
)
// #colbreak()


#pro-con(
  name: "Ishika",
  image: image("/assets/brain.png"),
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
// #colbreak()


#pro-con(
  name: "---",
  image: image("/assets/brain.png"),
  pros: [
    - 
  ],
  cons: [
    - 
  ],
  notes: [
    - 
  ],
)