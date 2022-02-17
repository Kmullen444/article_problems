#need two points one from the beginning and one from the end
#if left + right is greater than the target move right over 1
#if left + right is lesser than the target move left over 1


def twoSum(nums, target)
  start_point = 0
  end_point   = nums.length-1

  while start_point <= end_point
    return [start_point + 1, end_point + 1] if nums[start_point] + nums[end_point] == target
    nums[start_point] + nums[end_point] > target ? end_point -= 1 : start_point += 1
  end
end

numbers = [2,7,11,15]
target = 9

p twoSum(numbers, target)

numbers = [2,3,4]
target = 6

p twoSum(numbers, target)
