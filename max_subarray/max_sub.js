function maxSub(nums){
  let maxSum = nums[0]
  let sum    = nums[0]

  for (i = 1; i < nums.length; i++){
    sum = Math.max(nums[i], nums[i]+sum)
    maxSum = Math.max(maxSum, sum)
  }
  return maxSum
}


console.log(maxSub([5,4,-1,7,8]))

