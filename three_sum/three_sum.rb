def three_sum(nums)
  answer = []
  nums = nums.sort

  (0..nums.length-1).each do |idx|
    next if idx > 0 && nums[idx] == nums[idx - 1]
    middle = idx + 1
    end_pos = nums.length-1

    while middle < end_pos do
      total = nums[idx] + nums[middle] + nums[end_pos]

      if total > 0
        end_pos -= 1
      elsif  total < 0
        middle += 1
      else
        answer << [nums[idx], nums[middle], nums[end_pos]]
        middle += 1
        while nums[middle] == nums[middle - 1] && middle < end_pos
          middle += 1
        end
      end

    end

  end
  answer
end



nums = [-1, 0, 1, 2, -1, -4]
p three_sum(nums)
nums = [0,0,0,0]
p three_sum(nums)
