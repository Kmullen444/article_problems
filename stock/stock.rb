def stock_picker(prices)
  profit = 0
  min    = prices[0]

  prices.each do |price|
    min = price if price < min
    pos_profit = price - min
    profit = pos_profit if pos_profit > profit
  end
  profit
end

prices = [7,1,5,3,6,4] #5

p stock_picker(prices)

prices = [7,6,4,3,1] #0

p stock_picker(prices)
