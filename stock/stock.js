const findMax = (prices) => {
  let profit = 0
  let min    = prices[0]
   
  prices.forEach((price) => {
    if(price < min){
      min = price
    }

    let posProfit = price - min
    if(posProfit > profit){
      profit = posProfit
    }
  })
  return profit
}

let prices = [7,1,5,3,6,4]
console.log(findMax(prices)) // 5

prices = [7,6,4,3,1]
console.log(findMax(prices)) // 0
