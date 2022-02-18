def twoSum(nums, target)
  pairs = {}

  nums.each_with_index do |num, idx|
    if pairs[target - num]
      k = pairs[target - num]
      return k + 1, idx + 1
    end
    pairs[num] = idx
  end
end

def twoSum(nums, target)
  nums.each_with_index do |num1, idx1|
    nums.each_with_index do |num2, idx2|
      return [idx1 + 1, idx2 + 1] if num1 + num2 == target
      break if num1 + num2 > target
    end
  end
end

def twoSum(nums, target)
  left  = 0
  right = nums.length-1

  while left < right 
    return [left + 1, right + 1] if nums[left] + nums[right] == target
    nums[left] + nums[right] > target ? right -= 1 : left += 1
  end
end

numbers = [2,7,11,15]
target = 9

p twoSum(numbers, target)

numbers = [2,3,4]
target = 6

p twoSum(numbers, target)
