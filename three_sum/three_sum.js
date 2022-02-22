function twoSum(nums) {
  let answer = []
  nums = nums.sort()

  for(i = 0; i < nums.length-3; i++){
    if (nums[i] === nums[i - 1] &&  i > 0)  continue; 
    let mid = i + 1;
    let ep  = nums.length-1;

    while(mid < ep) {
      let total = nums[i] + nums[mid] + nums[ep];

      if (total > 0){
        ep -= 1;
      } else if (total < 0) {
        mid += 1;
      } else {
        answer.push([nums[i], nums[mid], nums[ep]]);
        mid += 1;
        while (nums[mid] === nums[mid - 1] && mid < ep){
          mid += 1;
        }
      }
    }
  }
  return answer;
}


let nums = [-1, 0, 1, 2, -1, -4];
console.log(twoSum(nums));
nums = [0, 0, 0, 0];
console.log(twoSum(nums));
