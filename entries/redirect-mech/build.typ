#import "/template/template.typ": *

#show: create-entry.with(
  title: "Redirect Mech v1",
  type: "build",
  date: datetime(year: 2024, month: 10, day: 11),
  attendance: ("Ajibola", "Jin", "Ishika", "Makhi", "Eric", "Rory", "Anders"),
  designed: "Jin",
  witnessed: "Makhi",
)


#set grid(
  columns: (1fr, 1fr),
  column-gutter: 5pt,
  row-gutter: 0pt,
)

= 2024/10/11
Following the CAD, we began working on the redirect mechanism. We made great progress on the robot but had some difficulties with troubleshooting. We noticed that there is a specific angle required for successfully reversing the rings onto the four-bar.

== Delegation
#delegation(
  recurring: [
    - *Inventory*: Makhi, Rory, Eric, Anders
    - *Manufacturing*: Makhi, Rory, Eric, Anders
    - *Oversight & Quality Control*: Jin, Makhi
    - *Initial Testing*: Makhi
    - *Programming*: Ajibola
  ],
  today: [
    - Set up the towers for the redirect mechanism: Makhi, Jin, Rory, Eric, Anders
    - Set up four-bar linkage: Jin, Makhi
    - Cut the polycarbonate for the redirect mechanism: Eric
    - Set up the gear system for the redirect mechanism: Rory, Eric, Anders
  ]
)

== Build Process
#grid(
  figure(
    image("build/2024.10.11-1.png", width: 170pt),
    caption: "Basket of the redirect mechanism. The ring will slide and rest in there."
  ),
  [
    === Materials
    - 2x 25x2x1 C-channel
    - 2x 24x2x1 C-channel
    - Polycarbonate
    - 2x 15x1x1 half-cut C-channel
    - 1x 7x1x1 half-cut C-channel
    - High strength axle
    - 1x 36-tooth gear
    - 1x 48-tooth gear
    - The rest of the materials can be found in the toolbox
  ],
)

#colbreak()

#grid(
  row-gutter: 10pt,
  [
    === Assembly
    - Attached the 2 25x2x1 C-channels at the front of the drivetrain.
      - This is where we planned the four-bar to be in the CAD.
    - #text(red)[Problem:] The team had some difficulties placing the gears for the redirect mechanism. The input links for the four-bar got in the way.
    - #text(green)[Solution:] We attached the 7x1x1 C-channel in the side with high strength bearings and high strength axles running through it. This is where the gear and motors will be.
    - We used the 24x2x1 C-channel for the top portion of the four-bar.
      - This serves as the input link.
    - We used the 15x2x1 C-channel for the bottom portion of the four-bar.
      - This serves as the output link.
    - Created the lexan basket at the end of the redirect mechanism.
    - Created a lexan guide at the clamp side of the robot. This will help navigate rings off the intake and onto the mobile goal stakes.
  ],
  figure(
    image("build/2024.10.11-2.png", width: 170pt), 
    caption: "Top view of the redirect mechanism. You can see the ramp from which the ring will slide when we reverse the intake."
  ),
  figure(
    image("build/2024.10.11-3.png", height: 230pt),
    caption: "The 15x1x1 C-channel link."
  ),
  figure(
    image("build/2024.10.11-4.jpg", height: 210pt),
    caption: "The lexan at the clamp side of our robot. When rings travel onto our second stage of the intake, the lexan ramps help to push them into the mobile goal."
  ),
  [
    === Troubleshooting
    - We tested the four-bar lift of the redirect mechanism.
    - We saw that the intake had some difficulties intaking into the redirect mechanism. We plan to lower the redirect mechanism by a hole or so. 
    - We discovered that the basket of the redirect mechanism was out of the size limit. We planned to fix the issue next meeting.
  ],
  figure(
    image("build/2024.10.11-5.png", width: 150pt),
    caption: "We used a 7x1x1 C-channel to attach the gear system for our redirect mechanism. The drive gear is 36-tooth and the driven gear is 48-tooth for torque efficiency."
  )
)

#colbreak()

= 2024/10/12
#to-do(
  date: datetime(year: 2024, month: 10, day: 12),
  monthly-schedule: "On",
  yearly-schedule: "Ahead",
  (
    (true, "Build the redirect mech according to today's delegation.", "Everyone"),
  )
)

The majority of the day was dedicated to addressing the robot size limit issue with our redirect mechanism. Since the mechanism's basket extends beyond the 18" x 18" x 18" starting size limit, we needed a solution to make the basket more compact. Our plan involves using hinges and rubber bands to keep the basket folded up initially, allowing gravity to deploy it during matches.

== Delegation
#delegation(
  recurring: [
    - *Inventory*: Rory, Eric, Anders
    - *Manufacturing*: Makhi, Rory 
    - *Oversight & Quality Control*: Jin, Ajibola 
    - *Initial Testing*: Makhi
    - *Programming*: Ajibola, Ishika 
  ],
  today: [
    - Fixing the expansion limit error of our redirect mechanism: Jin, Eric
    - Troubleshooting: Makhi
  ]
)

== Build Process
#grid(
  row-gutter: 10pt,
  figure(
    image("build/2024.10.12-1.png", width: 170pt),
    caption: "The basket before we attached the hinges. Additionally, you can see the plate mounts."
  ),
  [
    === Materials
    - Polycarbonate
    - 2x hinges 
    - Zipties
    - The rest of the materials can be found in the toolbox
  ],
  [
    === Assembly
    - Took apart the basket section of our redirect mechanism. 
    - Added hinges to the end of the four bar.
    - Attached the basket to the hinges.
      - This allows for lateral movement of the basket.
    - Added a stopper at the bottom of the basket to prevent it from dipping too low.
    - Added mounts for our team color plates.
  ],
  figure(
    image("build/2024.10.12-3.png", width: 160pt),
    caption: "The new basket during testing."
  ),
  figure(
    image("build/2024.10.12-2.png", width: 160pt), 
    caption: "Bird's eye view of the redirect mechanism."
  ),
  [
    === Troubleshooting
    - One test was conducted for the redirect mechanism. It had some inconsistency collecting the rings, as well as scoring on the wall stakes.
      - We concluded that shortening the redirect mechanism and giving it more torque will help it perform better.
  ],
)

#colbreak()

= 2024/10/17
#to-do(
  date: datetime(year: 2024, month: 10, day: 17),
  monthly-schedule: "On",
  yearly-schedule: "Ahead",
  (
    (true, "Troubleshoot the redirect mech according to today's delegation.", "Everyone"),
  )
)

Today was spent testing the redirect mechanism, an integral part of the robot's design. Since the redirect mechanism was proving to be the most complex mechanism on the robot, we made it a priority to optimize its efficiency as much as possible before the Dulaney Royal Rumble tournament in 2 days.

== Delegation
#delegation(
  recurring: [
    - *Inventory*: Eric, Makhi
    - *Manufacturing*: Jin, Makhi, Eric 
    - *Oversight & Quality Control*: Jin, Ajibola 
    - *Initial Testing*: Makhi
    - *Programming*: Ajibola, Ishika 
  ],
  today: [
    - Field set up for testing: Jin, Eric, Rory, Anders
    - Polycarbonate cutting: Eric, Rory 
    - Redirect mechanism friction troubleshooting: Jin, Makhi, Eric, Rory, Anders
  ]
)

== Build Process
#grid(
  [
    === Materials
    - Polycarbonate
    - Zipties
    - Rubber Bands
    - License Plates
    - Paracord
    - 2x 8x1x1 C-channel
    - The rest of the materials can be found in the toolbox
  ],
  figure(
    image("build/2024.10.17-1.png", width: 170pt),
    caption: "New flaps for the redirect mechanism."
  ),
)

#colbreak()

#grid(
  row-gutter: 20pt,
  [
    === Assembly
    - #text(red)[Problem:] The rings were having a hard time getting redirected onto the redirect mechanism. 
    - #text(green)[Solution:] We cut 2" by 4" polycarbonate flaps for the redirect mechanism
      - These flaps act as a trap door. As the rings travel up the intake, the flaps swing upwards, allowing the rings to pass through. Once the intake reverses direction, the flaps prevent the rings from traveling down the intake, causing them to instead drop to the redirect mechanism.
    - Locked the hinge flaps on the redirect mechanism.
      - Before, the basket would flop to the floor. We used screws and collars to create a hard stop for the basket.
    - Shortened the redirect mechanism.
    - Tightened loose screws and added stand-offs.
  ],
  figure(
    image("build/2024.10.17-2.png", width: 180pt), 
    caption: "The new basket for our redirect mechanism."
  ),
  figure(
    image("build/2024.10.17-3.png", width: 180pt),
    caption: "The license plates, redirect flaps, and shortened redirect mechanism."
  ),
  [
    === Troubleshooting
    - We tested the redirect mechanism in between modifications.
    - During the initial test, the rings did not make it to the redirect mechanism. The rings either had a difficult time reversing to the redirect mechanism or staying on the basket when the four-bar extended.
    - During the second test, we added the flaps. Additionally, we used polycarbonate gussets and 2 8x1x1 C-channel to secure the rings in place.
  ],
)