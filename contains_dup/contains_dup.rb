def contains_dup(nums)
  nums_counted = {}

  nums.each do |num|
    if nums_counted[num] 
      return true
    else
      nums_counted[num] = true
    end
  end
  false
end


p contains_dup([1,2,3,1]) #true
p contains_dup([1,2,3,4]) #false
