const xorFinder = (array) => {

  let amount;

  array.forEach(num1 => {
    array.forEach(num2 => {
      let xor = num1 ^ num2;
      if (amount != undefined){
        if (amount < xor){
          amount = xor
        }
      } else {
        amount = xor
      } 
    })
  })

  return amount
}


console.log(xorFinder([25,10,2,8,5,3])); // 28
console.log(xorFinder([1,2,3,4,5,6,7])); // 7
console.log(xorFinder([-25,10,-2,8,5,-3])); // 26 
