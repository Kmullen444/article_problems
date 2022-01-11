# Curated List Day 2: Stock Picker


Hello! And welcome back to our series where we work our way through the list 
found on Team Blind. These 75 questions are picked to get you up to speed on 
questions that might be asked during the interview process. As always this is 
not a comprehensive list and some of these questions may require LeetCode pro 
to access.

Today we are going to be learning to make some money. *This should not be used 
with money, this is only a joke.*

With our disclaimer out of the way let’s jump in. 

Our question today reads: 
> “You are given an array of prices where prices[i] is the price of a given stock 
> on the ith day. You want to maximize your profit by choosing a single day to buy 
> one stack and and choosing a different day in the future to sell that stock. 
> Return the maximum profit you can achieve from this transaction. If you cannot 
> achieve any profit, return 0.”

As always let’s start by breaking it down and see what we are working with. The 
first thing that comes to mind is what we need to return. This question is 
asking us for the greatest profit, that means that we are probably going to need 
a variable to hold that number. We are also going to need to set a min value, 
this will be for use within our loop. The last thing we need to do before we 
move on is to make sure that our method is going to return our profit. So let’s 
throw that at the bottom of our method.

```
def find_max(prices)
  profit = 0
  min    = prices[0]

  profit
end
```
```
const findMax = (prices) => {
  let profit = 0
  let min    = prices[0]

  return profit
}
```

Now let’s move on our loop, since we know that we need a buy day before we can 
sell. We will only need a single loop to make this work. So in our loop let's 
check if the current price is less than what is saved in our variable, in this 
case whatever the first number in our prices array. If it is then we want to set 
our variable to that if not we leave it alone. For ease of readability, I’ve 
added a pos_profit variable, that holds our current prices and minus the 
current min. Finally, let’s check if the possible profit is greater than its 
current setting. If it is, let's change it, if it’s not, let's leave it as is.

```
def find_max(prices)
  profit = 0
  min    = prices[0]

  prices.each do |price|
    min = price if price < min
    pos_profit = price - min
    profit = pos_profit if pos_profit > profit
  end
  profit
end
```
```
const findMax = (prices) => {
  let profit = 0
  let min    = prices[0]

  prices.forEach((price) => {
    if(price < min){
      min = price
    }

    let pos_profit = price - min
    if(pos_profit > profit){
      profit = pos_profit
    }
  })
  return profit
}
```


And that is it, but before we go let’s throw in a concept that we’ve learned 
from our [Two-sum](https://github.com/Kmullen444/article_problems/tree/main/two-sum//github.com/Kmullen444/article_problems/tree/main/two-sum)

problem and see if we can’t figure out the time complexity of 
our answer. Since we are only using one and that loop is incrementing through 
our array. 

And that’s one more day down! Thanks for reading, as always if you have a 
different way of solving this problem make sure to post it in the comment.

