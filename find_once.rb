def find_once(arr)
  new_arr = arr.map do |num| 
    num.to_s(3).to_i(3)
  end.sum
  arr[new_arr % 3]
end


p find_once([6,3,3,1,3,6,6])
p find_once([13,19,13,13])
