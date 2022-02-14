def search(nums, target)
  left_idx  = 0
  right_idx = nums.length - 1

  while left_idx <= right_idx do 
    mid_idx = right_idx + (left_idx - right_idx) / 2

    right_num = nums[right_idx]
    mid_num   = nums[mid_idx]
    left_num  = nums[left_idx]

    p "Mid at top of loop: #{nums[mid_idx]} and idx #{mid_idx}"
    p "Right at top of loop: #{nums[right_idx]} and idx #{right_idx}"
    p "Left at top of loop: #{nums[left_idx]} and idx #{left_idx}"
    puts

    return mid_idx if mid_num == target

    
    if mid_num >= left_num
      target > mid_num || target < left_num ? left_idx = mid_idx + 1 : 
        right_idx = mid_idx - 1
    else
      target < mid_num || target > right_num ? right_idx = mid_idx - 1 : 
        left_idx = mid_idx + 1
    end
    p "Right: #{right_num} and idx: #{right_idx}"
    p "Left: #{left_num} and idx: #{left_idx}"
    p "Mid: #{mid_num} and idx: #{mid_idx}"
    puts
  end
  -1
end



nums = [4,5,6,7,0,1,2]
p search(nums, 0)
nums = [4,5,6,7,0,1,2]
p search(nums, 3)
nums = [1]
p search(nums, 1)
