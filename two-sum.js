const twoSum = (arr, target) => {
  for(i = 0; i < arr.length; i++){
    for(j = 0; j < arr.length; j++){
      let sum = arr[i] + arr[j]
      if (sum === target){
        return [i, j]
      }
    }
  }
}


const twoSum = (arr, target) => {
  let sums = {}

  for(i = 0; i < arr.length; i++){
    if(target - arr[i] in sums){
      return [sums[target - arr[i]], i]
    }else {
      sums[arr[i]] = i
    }
  }
 }


console.log(twoSum([2,7,11,15], 9)); // [0, 1]
console.log(twoSum([3,2,4], 6)); // [1,2]
console.log(twoSum([3,3], 6)); // [0, 1]

