def product_except_self(nums)
  answer = [1]

  (1...nums.length).each do |i|
    answer[i] = answer[i-1] * nums[i-1]
  end

  r = 1
  (nums.length-1).downto(0) do |i|
    answer[i] *= r
    r *= nums[i]
  end

  answer

end


p product_except_self([1,2,3,4]) #[24,12,8,6]
