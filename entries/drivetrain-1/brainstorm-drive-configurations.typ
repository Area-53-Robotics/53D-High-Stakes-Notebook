#import "/template/template.typ": *

#show: create-entry.with(
  title: "Drivetrain #1 - Drive Configurations",
  type: "brainstorm",
  date: datetime(year: 2024, month: 6, day: 21),
  attendance: ("Ajibola", "Jin", "Ishika", "Makhi", "Eric", "Rory"),
  designed: "Ajibola",
  witnessed: "Ishika",
)

#to-do(
  date: datetime(year: 2023, month: 7, day: 22),
  monthly-schedule: "On",
  yearly-schedule: "On",
  (
    (true, "Brainstorm possible configurations for the drivetrain.", ("Everyone",)),
    (true, "Select the best configuration for the drivetrain using a decision matrix.", ("Everyone",)),
  )
)

While most of our team was already familiar with the different types of drives, we did not have much information on the pros and cons of each. During our research, a very helpful resource was the BLRS Wiki Page on VEX Drivetrains #footnote[#link("https://wiki.purduesigbots.com/hardware/vex-drivetrains")].

#pro-con(
  name: "Tank Drive",
  image: image("brainstorm-drive-configurations/TankDrive.excalidraw.svg"),
  description: [
    Tank drive is a drivetrain where two sets of wheels (left and right) are powered independently, allowing for precise movement similar to a tank. The left joystick controls the left wheels, and the right joystick controls the right wheels, enabling the robot to move forward, backward, and turn by adjusting the speed of each side.
  ],
  pros: [
    - Easy to build, saving time to build other subsystems
    - Open front and back, leaving space for other subsystems
    - Generates lots of force, making it easier to push other robots and triballs
  ],
  cons: [
    - Cannot strafe or drive omni-directional, limiting our mobility
    - Able to be pushed sideways, making us vulnerable to offense from other teams
    - Shaky drive when not constructed well
  ],
  notes: [
    - Suggested by Eric
    - Locked omnis mitigate the risk of getting pushed by other teams, however, they can damage the wheels and having too many creates difficulty turning
  ],
)

#colbreak()

#pro-con(
  name: "H-Drive",
  image: image("brainstorm-drive-configurations/H-Drive.excalidraw.svg"),
  description: [
    H-drive is a drivetrain configuration that adds a horizontal, center-mounted wheel perpendicular to the traditional tank drive wheels, forming an "H" shape. This center wheel allows the robot to strafe in addition to forward, backward, and turning motions.
  ],
  pros: [
    - Easy to build (but less so than Tank Drive)
    - Open front and back
    - Allows you to strafe sideways
      - However, slower than forwards and backwards movement
  ],
  cons: [
    - Requires an extra motor for the middle wheel
    - Can take up space from mechanisms in the middle of the robot
    - System has to be made to keep the middle wheel in contact with the floor
    - The extra wheel can get caught on obstacles such as the middle barrier
  ],
  notes: [
    - Suggested by Emma
    - More complex than standard tank drive
    - Programming an H-drive requires specific attention to control the lateral movement of the strafing wheel.
  ],
)


#pro-con(
  name: "Holonomic Drive",
  image: image("brainstorm-drive-configurations/HolonomicDrive.excalidraw.svg", width: 50pt),
  description: [
    Holonomic drive is a drivetrain that allows a robot to move in any direction independently of its orientation, offering full omnidirectional movement. This is typically achieved using specialized wheels like omni-wheels or mecanum wheels, which can be controlled individually to move the robot forward, backward, sideways, and diagonally without needing to turn first.
  ],
  pros: [
    - Greatest maneuverability (8/omni-directional movement)
    - Faster than other drivetrains
    - Forward speed = sideways speed
    - Strafing
    - Drivetrain structure makes it easy to implement tracking wheels
    - Can turn in place
  ],
  cons: [
    - Complex to build
    - Easily pushed around
    - Drivetrain structure reduces space for bot mechanisms
    - Less forward pushing power (force)
    - Less traction
    - More complex programming
  ],
  /*notes: [
    - Suggested by Ajibola
    - High learning curve in building
    - Able to make precise adjustments while moving
  ],*/
)