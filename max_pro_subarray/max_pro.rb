def max_prod(nums)
  current_max  = nums[0]
  current_min = nums[0]
  max_prod = nums[0]

  nums[1..nums.length].each do |num|
    current_min, current_max = [num, current_min * num, current_max * num].minmax
    max_prod = [max_prod, current_max].max
  end
  max_prod
end


p max_prod([2,3,-2,4]) #6
p max_prod([-2,0,-1])  #0
p max_prod([-2,3,-4])  #24
