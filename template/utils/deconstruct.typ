#let deconstruct(index: 0, arrays) = {
  let return-array = ()
  for array in arrays {
    return-array.push(array.at(index))
  }
  return return-array
}