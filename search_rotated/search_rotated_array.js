function search (nums, target){
  let left_idx  = 0;
  let right_idx = nums.length - 1;

  while (left_idx <= right_idx){
    let mid_idx = right_idx + (left_idx - right_idx) / 2;

    if (nums[mid_idx]=== target) return mid_idx;

    if (nums[mid_idx] >= nums[left_idx]){
      if (target > nums[mid_idx] || target < nums[left_idx]){
        left_idx = mid_idx + 1;
      } else {
        right_idx = mid_idx - 1;
      }

    } else {
      if (target < nums[mid_idx] || target > nums[right_idx]){
        right_idx = mid_idx - 1;
      } else {
        left_idx = mid_idx + 1;
      }
    }
  }
   return -1; 
}

function search (nums, target) {
  let left_idx = 0;
  let right_idx= nums.length - 1

  while (left_idx < right_idx){
    let mid_idx = right_idx + (left_idx - right_idx) / 2;

    
  }
}

function moveIndex(

let nums = [4,5,6,7,0,1,2]
console.log(search(nums, 0));
nums = [4,5,6,7,0,1,2]
console.log(search(nums, 3));
nums = [1]
console.log(search(nums, 1));
