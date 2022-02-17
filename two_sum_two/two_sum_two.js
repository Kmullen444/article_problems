function twoSum(nums, target) {
  let left  = 0;
  let right = nums.length-1;

  while(left < right) {
    if (nums[left] + nums[right] === target) return [left + 1, right + 1];
    (nums[left] + nums[right] > target)? right -= 1 : left += 1;
  }
}

let nums = [2,7,11,15];
let target = 9;
console.log(twoSum(nums, target));
