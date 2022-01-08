const oldRomanNumeral = (num) => {
  const numerals = ['M', 'D', 'C', 'L','X', 'V', 'I']
  const numbers  = [1000, 500, 100, 50, 10, 5, 1]
  let roman = ''
  let i = 0

  while(num > 0){
    numbers.forEach(number => {
      if(numbers[i] > num){
        return
      } else {
      roman += numerals[i]
      num = num - numbers[i]
      }
    })
    i++
  }
  return roman
}


console.log(oldRomanNumeral(3755)) // MMMDCCLV
