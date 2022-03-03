def most_water(height)
  left_point  = 0
  right_point = height.length-1
  max_area    = 0

  while left_point < right_point
    current_area = (right_point - left_point) * [height[left_point], height[right_point]].min 
    max_area = current_area if current_area > max_area

    height[left_point] < height[right_point] ?  left_point += 1 : right_point -= 1

  end

  max_area
end



height = [2,3,4,5,18,17,6]

p most_water(height)
