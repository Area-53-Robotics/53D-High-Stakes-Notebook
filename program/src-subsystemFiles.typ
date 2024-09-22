#import "/template/entries.typ": *

#show: create-program-entry.with(
  title: "53D_HighStakes/src/subsystemFiles/"
)

= clamp.cpp <clamp.cpp>
#raw(block: true, lang: "cpp", read("src/subsystemFiles/clamp.cpp"))