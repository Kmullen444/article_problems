function twoSum(nums, target) {
  let start_pos = 0;
  let end_pos   = nums.length-1;

  while(start_pos < end_pos) {
    if (nums[start_pos] + nums[end_pos] === target) return [start_pos, end_pos];
    (nums[start_pos] + nums[end_pos] > target)? end_pos -= 1 : start_pos += 1;
  }
}

let nums = [2,7,11,15];
let target = 9;
console.log(twoSum(nums, target));
