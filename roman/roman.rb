def old_roman_numeral(num)
  refer = { "M" => 1000, "D" => 500, "C" => 100, "L" => 50, "X" => 10, 
            "V" => 5, "I" => 1 }
  numeral = ""

  until num == 0
    refer.each do |key, value|
      next if value > num
      numeral += key
      num = num - value
      break
    end
  end
  numeral
end


p old_roman_numeral(3755) # MMMDCCLV
