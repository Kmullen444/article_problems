const findMin = (nums) => {
  let left  = 0; // set a var to 0
  let right = nums.length - 1; // set a var to length of the array - 1

  while (left < right) { // loop till the low is less than high
    let mid = Math.floor(left + (right - left) / 2);
    console.log(`mid: ${mid}`)
    nums[mid] > nums[right] ? left = mid + 1 : right = mid;
  }
  return nums[left]
}


let nums1 = [3,4,5,1,2]
console.log(findMin(nums1))
