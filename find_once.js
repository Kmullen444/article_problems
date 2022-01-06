const findElement = (arr) => {
  let ones = 0
  let twos = 0
  for (let i = 0; i < arr.length; i++){
    ones = (ones ^ arr[i]) & ~twos
    twos = (twos ^ arr[i]) & ~ones
  }
  return ones;
}


console.log(findElement([6,1,3,3,3,6,6]));
console.log(findElement([13,19,13,13]));

