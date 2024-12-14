#import "/template/template.typ": *

#show: create-entry.with(
  title: "Odometry - Hardware",
  type: "brainstorm",
  date: datetime(year: 2024, month: 2, day: 13),
  attendance: ("Ajibola", "Ishika"),
  designed: "Ajibola",
  witnessed: "Ishika",
)

#to-do(
  date: datetime(year: 2024, month: 2, day: 13),
  (
    (true, "Brainstorm possible implementation methods for PID", "Everyone"),
    (true, "Select the best implementation method using a decision matrix", "Everyone"),
    (true, "Build the kicker upgrades.", "Everyone"),
  )
)

// Now that we have decided to use PID with a possibility for Pure Pursuit, we brainstormed a few different implementation methods that have the capability to use them.

After deciding to use LemLib to implement odometry, we needed to choose an odometry hardware configuration that can obtain the data needed for the position tracking algorithm.

Each odometry setup has a combination of some of the following components:
- Tracking Wheels - Unpowered wheels with an optical shaft sensor or rotation sensor attached to them that can accurately track displacement on one axis
  - Vertical Tracking Wheels - One vertical tracking wheel can be used to track vertical displacement. Two vertical tracking wheels can be used to track robot orientation.
  - Horizontal Tracking Wheels - One horizontal tracking wheel can be used to track horizontal displacement.
- Inertial Measurement Unit (IMU) - Sensor that tracks changes in robot orientation
- Motor Encoders - Encoders that are internal to the VEX motors that track the rotation of the motor

#pro-con(
  name: "3 Tracking Wheels",
  image: image("brainstorm-hardware/3-tracking-wheels.excalidraw.svg"),
  description: [
    This setup uses 2 parallel vertical tracking wheels and 1 horizontal tracking wheel.
  ],
  pros: [
    - *Versatility* - This is the only odometry hardware setup that is compatible with all drivetrain configurations, including an all omni-wheel setup
    - *Accuracy* - 
  ],
  cons: [
    - *Space* - 3 tracking wheels take up a significant amount of space on the drivetrain, taking space from other subsystems and their mounting points
  ],
  notes: [
  ],
)

#colbreak()

#pro-con(
  name: "2 Tracking Wheels & 1 IMU",
  image: image("brainstorm-hardware/2-tracking-wheels-1-imu.excalidraw.svg"),
  description: [
    This setup uses 1 vertical tracking wheel, 1 horizontal tracking wheel, and an IMU.
  ],
  pros: [
    - *Actively Maintained* - LemLib will continue being developed throughout this season, so if we encounter problems with the library we can request a fix from the developers
    - *Robust Movement Options* - LemLib has linear PID movement, turning PID movement, boomerang PID movement (curved movement), and Pure Pursuit
    - *Support* - Many other teams use LemLib, so we can get support and advice from them
  ],
  cons: [
    - *PROS 4 Unstable* - LemLib has a version that is compatible with our version of PROS, but it is currently unstable and will likely have a lot of issues
  ],
)

#pro-con(
  name: "1 Tracking Wheel & 1 IMU",
  image: image("brainstorm-hardware/1-tracking-wheel-1-imu.excalidraw.svg"),
  description: [
    This setup uses 1 vertical tracking wheel and an IMU.
  ],
  pros: [
    - *Space Efficiency* - An IMU can be placed anywhere on the drivetrain, and a single tracking wheel does not take up much space
  ],
  cons: [
    - *No Horizontal Displacement Tracking* - Without a horizontal tracking wheel, the odometry system cannot account for horizontal movements. Therefore, this setup is only compatible with drivetrains that have traction wheels to prevent horizontal movement.
  ],
)

#pro-con(
  name: "Motor Encoders",
  image: image("brainstorm-hardware/motor-encoders.excalidraw.svg"),
  description: [
    This setup uses the motor encoders inside the motors on our drivetrain.
  ],
  pros: [
    - *Space Efficiency* - We would be able to use the motors that are already on the drivetrain, saving space for other mechanisms
    - *Time Saving* - This setup requires no new tracking wheels or sensors, saving us build time
  ],
  cons: [
    - *No Horizontal Displacement Tracking* - Without a horizontal tracking wheel, the odometry system cannot account for horizontal movements. Therefore, this setup is only compatible with drivetrains that have traction wheels to prevent horizontal movement.
    - *Inaccuracy* - Due to wheel slippage, the data obtained from this odometry setup becomes inaccurate the quickest out of all the odometry setups.
  ],
)