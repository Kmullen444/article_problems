# There is an integer array nums sorted in ascednding order (with distinct values).
# Prior to being passed to your function, nums is possibly rotated as an unknown pivot index k
# Given the array nums after the possible rotation and an integer target, return the index of target if it is in
# nums, or -1 if it is not in nums

# You must write an alogrithm with O(log n) runtime complexity.

def search(nums, target)
  left  = 0
  right = nums.length - 1

  while left <= right do 
    mid = right + (left - right) / 2
    return mid if nums[mid] == target

    if nums[mid] >= nums[left]
      target > nums[mid] || target < nums[left] ? left = mid + 1 : 
        right = mid - 1
    else
      target < nums[mid] || target > nums[right] ? right = mid - 1 : 
        left = mid + 1
    end
  end
  -1
end



nums = [4,5,6,7,0,1,2]
p search(nums, 0)
nums = [4,5,6,7,0,1,2]
p search(nums, 3)
nums = [1]
p search(nums, 1)
