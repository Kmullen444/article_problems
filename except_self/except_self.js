function exceptSelf(nums) {
  let answer = [1]

  for(i = 1; i < nums.length;i++){
    answer[i] = answer[i-1] * nums[i-1]
  }

  let r = 1
  for(j = (nums.length-1); j > -1; j--){
    answer[j] *= r
    r *= nums[j]
  }
  return answer
}


console.log(exceptSelf([1,2,3,4]))
