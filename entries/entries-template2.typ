#import "/template/template.typ": *

#show: create-entry.with(
  title: "Hi",
  type: "brainstorm",
  date: datetime(year: 2024, month: 1, day: 1),
  attendance: ("Ajibola",),
  designed: "Ajibola",
  witnessed: "Ajibola",
)

#to-do(
  date: datetime(year: 2024, month: 1, day: 1),
  (
    (true, ""),
  )
)

#new_pro-con(
  name: "Hi",
  image: [joe], 
  image-width: 40%, 
  pros: [AMAZING],
  cons: [NOT AMAZING],
  description:[BLEH BLEH BLEH] ,
  notes: [.....]
  )
= ---