#import "/template/template.typ": *

#show: create-entry.with(
  title: "Overall Robot Plan v1",
  type: "brainstorm",
  date: datetime(year: 2024, month: 6, day: 14),
  attendance: ("Ajibola", "Jin", "Ishika", "Makhi", "Eric", "Rory"),
  designed: "Jin",
  witnessed: "Ajibola",
)

Every member on 53D used the analysis in our #entry-reference(type: "identify", title: "Game Challenge - Strategy Analysis") to brainstorm an overall robot idea.

#pro-con(
  name: "Ajibola",
  image: image("/entries/overall-robot/brainstorm/ajibola-robot-idea.excalidraw.svg"),
  description: [
    A three wheel drive, a four bar with a claw at the end for mobile goal manipulation and hang, an adjustable intake and a pneumatic clamp. 
  ],
  pros: [
    - *Balance* - The equally bulky intake and four-bar are on opposite sides of the robot, keeping the robot balanced.
    - *Stability* - The center of gravity of the robot is close to the ground, keeping the robot stable when driving.
  ],
  cons: [
    - *Inefficient Climbing* - The robot is likely to tilt backwards when climbing due to the clamp only supporting the elevated robot on the front.
  ],
)

#pro-con(
  name: "Jin Hao",
  image: image("/entries/overall-robot/brainstorm/jin-robot-idea.excalidraw.svg"),
  description: [
    A four wheel drive, Over Under flex wheel intake first stage, adjustable conveyor intake that can reach wall stakes, passive clamp, and a pneumatic clamp.
  ],
  pros: [
    - *Traction* - The two traction wheels on the drivetrain will prevent the robot from getting pushed on the side.
    - *Balance* - The point of balance when the robot climbs is close to the center of gravity, keeping the robot balanced when climbing.
  ],
  cons: [
    - *Motor Temperature* - Having four wheels on the drivetrain instead of three will make the drivetrain motors heat up faster.
    - *Front Heavy* - The four-bar intake shifts the center of gravity towards the front of the robot, making it more prone to tipping.
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
)

// #colbreak()

#pro-con(
  name: "Ishika",
  image: image("/entries/overall-robot/brainstorm/ishika-robot-idea.excalidraw.svg"),
  description: [
    A three wheel drive, a pneumatic clamp for mobile goals, an plunger to pick up rings, a pneumatic arm for hang.
  ],
  pros: [
    - *Quick Cycling* - The lightness of the bot combined with the simplicity of the intake will make it efficient at scoring rings on mobile goals.
    - *Drivetrain Space* - There are no subsystems near the center of the drivetrain, so we can use that space for sensors.
  ],
  cons: [
    - *Weak Climb* - Using pneumatics for the climb mechanism may not produce enough force to consistently climb.
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
    - *No Climb* - There is no climbing mechanism, preventing us from getting climb points and ladder stake points.
  ],
)

#pro-con(
  name: "Rory",
  image: image("/entries/overall-robot/brainstorm/rory-robot-idea.excalidraw.svg"),
  description: [
    A 4 wheel drive, an adjustable conveyor with a passive hang on the end, an conveyor that picks up rings and a pneumatic mobile goal clamp.
  ],
  pros: [
    - *Electronics Placement* - Most of the electronics are all in safe places, while also being mostly close to the robot's center of gravity.
    - *Light* - Because the climb mechanism and intake are combined into one mechanism, the robot is light, making it easier to climb.
  ],
  cons: [
    - *Ring Clearance* - It will be hard for the rings on the intake to get over the climb mechanism and radio.
  ],
)
