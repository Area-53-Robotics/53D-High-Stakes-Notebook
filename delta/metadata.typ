#import "./icons/icons.typ"
#import "./colors.typ": *

// These should really be with their respective files, but that causes a cyclic import error, so I put them here.

// @typstyle off
#let type-metadata = (
  "identify": (icon: icons.nb_question_mark, color: red, name: "Identify"),
  "understand": (icon: icons.nb_book, color: pink300, name: "Understand"),
  "brainstorm": (icon: icons.nb_light_bulb, color: orange, name: "Brainstorm"),
  "select": (icon: icons.nb_target, color: yellow, name: "Select"),
  "plan": (icon: icons.nb_clipboard, color: lime, name: "Plan"),
  "build": (icon: icons.nb_shapes, color: green, name: "Build"),
  "program": (icon: icons.nb_file, color: blue, name: "Program"),
  "test": (icon: icons.nb_chart, color: purple, name: "Test"),
  "management": (icon: icons.nb_folder, color: blue-gray, name: "Management"),
  "competition": (icon: icons.nb_award, color: amber, name: "Competition"),
  "note": (icon: icons.nb_info, color: deep-orange, name: "Note"),
  // "warning": (icon: icons.nb_warning, color: red, name: "Warning"),
  // "example": (icon: icons.nb_web, color: purple, name: "Example"),
  // "quote": (icon: icons.nb_quotes, color: gray, name: "Quote"),
  "equation": (icon: icons.nb_superscript, color: teal, name: "Equation"),
)