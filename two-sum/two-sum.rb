=begin
def two_sum(arr, target)

  arr.each_with_index do |num1, idx1|
    arr.each_with_index do |num2, idx2|
      sum = num1 + num2
      return [idx1, idx2] if sum == target && idx1 < idx2
    end
  end
end

=end

def two_sum(arr, target)
  pairs = {}

  arr.each_with_index do |num, idx|
    p pairs
    if pairs[target - num]
      return pairs[target - num], idx
    end
    pairs[num] = idx
  end
end


p two_sum([2,7,11,15], 9) # [0,1]
p two_sum([3,2,4], 6) # [1,2]

