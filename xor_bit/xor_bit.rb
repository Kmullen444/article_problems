# Given an array of integers, find the maximum of XOR of any two element.

def xor_finder(arr)
  amount = nil

  arr.each do |num1|
    arr.each do |num2|
      xor = num1 ^ num2
      if amount.nil?
        amount = xor
      else
        amount = xor if xor > amount
      end
    end
  end

  amount
end


p xor_finder([25,10,2,8,5,3]) # 28
p xor_finder([1,2,3,4,5,6,6]) # 7
p xor_finder([-25,-10,-2,-8,5,-3]) # 26


-25.to_s(2) 

25.to_s(2) # "11001"

5.to_s(2) # "101" or "00101"

"11100".to_i(2) # 28
