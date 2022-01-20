const maxProd = (nums) => {
  let maxProd = nums[0] 
  let cmin = nums[0] 
  let cmax = nums[0]

  for(i = 1; i < nums.length; i++){
    const temp = cmax 
    cmax = Math.max(nums[i], nums[i] * cmin, nums[i] * cmax) 
    cmin = Math.min(nums[i], nums[i] * cmin, nums[i] * cmax)
    maxProd = Math.max(maxProd, cmax)
  }
  return maxProd
}


//console.log(maxProd([2,3,-2,4]))
//console.log(maxProd([-2,0,-1]))
console.log(maxProd([-4,-3,-2]))
