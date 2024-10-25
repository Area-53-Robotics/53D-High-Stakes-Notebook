#let mean(data, digits: none) = {
  let mean = data.sum() / data.len()

  if digits == none {
    return mean
  } else {
    return calc.round(mean, digits: digits)
  }
}

#let median(data, digits: none) = {
  let data = data.sorted()

  let median-index = data.len() / 2

  if calc.odd(data.len()) {
    return data.at(calc.ceil(median-index) + 1)
  } else {
    let bottom-num = data.at(median-index + 1)
    let top-num = data.at(median-index + 2)

    return mean((bottom-num, top-num))
  }
}

#let range(data, digits: none) = {
  let data = data.sorted()

  let range = data.last() - data.first()

  if digits == none {
    return range
  } else {
    return calc.round(range, digits: digits)
  }
}

#let variance(data, digits: none) = {
  let mean = mean(data)

  data = data.map(value => {
    calc.pow(value, 2)
  })

  let variance = (data.sum() / data.len()) - calc.pow(mean, 2)

  if digits == none {
    return variance
  } else {
    return calc.round(variance, digits: digits)
  }
}

#let std-dev(data, digits: none) = {
  let standard-deviation = calc.sqrt(variance(data))

  if digits == none {
    return standard-deviation
  } else {
    return calc.round(standard-deviation, digits: digits)
  }
}

#let linear-regression(points) = {
  (
    (4, 2),
    (-3, 1),
    (5, 8)
  )
  
  let x-values = ()
  let y-values = ()
  for point in points{
    x-values.push(
      point.first()
    )
    y-values.push(
      point.last()
    )
  }
  let x-sqaured = x-values.map(
    value => {
      calc.pow(value, 2)
    }
  )
  let y-squared = y-values.map(
    value => {
      calc.pow(value, 2)
    }
  )
  let x-y = points.map(
    point => {
      point.first * point.last
    }
  )
  let x-values-sum = x-values.sum()
  let y-values-sum = y-values.sum()
  let x-sqaured-sum = x-sqaured.sum()
  let y-squared-sum = y-sqaured.sum()
  let x-y-sum = x-y.sum()
  let n = point.len()
  let b-0 = ((y-values-sum * x-sqaured-sum) - (x-values-sum * x-y-sum)) / (n * (x-sqaured-sum) - calc.pow(x-values-sum,2)) 
  let b-1 = ((n * x-y-sum) - (x-values-sum * y-values-sum)) / ((n * x-sqaured-sum) - calc.pow(x-values-sum, 2))

  return (b-1, b-0)
}