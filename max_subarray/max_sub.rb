def max_sub(nums)
  current_sum = nums[0]
  max_sum     = nums[0]

  nums[1..nums.length].each do |num|
    current_sum = [current_sum + num, num].max
    max_sum     = [max_sum, current_sum].max
  end
  max_sum
end

p max_sub([5,4,-1,7,8])
