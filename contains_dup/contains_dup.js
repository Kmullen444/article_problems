const containsDups = (nums) => {
  let counted = {}

  for(i = 0; i < nums.length; i++){
    if(counted[nums[i]]){
      return true
    } else {
      counted[nums[i]] = true
    }
  }
  return false
}


console.log(containsDups([1,2,3,1])) // true
console.log(containsDups([1,2,3,4])) // false 

