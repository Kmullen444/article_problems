function search(nums, target){
  let left = 0
  let right = nums.length - 1
  
  while(left <= right){
    let mid = right + (left - right) / 2
    if (nums[mid] === target) return mid;

    if(nums[mid] >= nums[left]){
      if (target > nums[mid] || target < nums[left]){
        left = mid + 1;
      } else {
        right = mid - 1;
      }

    } else {
      if (target < nums[mid] || target > nums[right]){
        right = mid - 1;
      } else {
        left = mid + 1;
      }
    }
  }
return -1;
}

let nums = [4,5,6,7,0,1,2]
console.log(search(nums, 0));
nums = [4,5,6,7,0,1,2]
console.log(search(nums, 3));
nums = [1]
console.log(search(nums, 1));
