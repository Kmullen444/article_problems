def min_rotated(nums)
  left = 0
  right = nums.length - 1

  while left < right 
    mid = left + (right - left) / 2
    nums[mid] > nums[right] ? left = mid + 1 : right = mid
  end

  nums[left]
end

nums1 = [3,4,5,1,2]
p min_rotated(nums1)
