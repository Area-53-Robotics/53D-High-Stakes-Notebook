#import "../metadata.typ": type-metadata

// #change-icon-color is in the notebookinator utils

#let change-icon-color(raw_icon: "", fill: red) = {
  return raw_icon.replace("<path", "<path style=\"fill: " + fill.to-hex() + "\"")
}

#let nb_icon(label: "", size: 0.7em) = {
  let data = type-metadata.at(label)
  let raw_icon = data.icon
  
  image.decode(raw_icon, height: size)
}