Welcom back to our series working our way through the list of interview questions 
from [TeamBlind.com](https://www.teamblind.com/post/New-Year-Gift---Curated-List-of-Top-75-LeetCode-Questions-to-Save-Your-Time-OaM1orEU). 
Today's problem should be a quick one given that it is very close to [Day 5: Maximum Subarray](https://github.com/Kmullen444/article_problems/tree/main/max_subarray).

> Given an integer array nums, find a contiguous non-empty subarray within the 
> array that has the largest product, and return the product.
> The test cases are generated so that the answer will fit in a 32-bit integer.
> A subarray is a contiguous subsequence of the array.

As we work through our list, it’s important to remember that we are building a 
base of knowledge. Today’s question is a great example of that. We can use most 
of our code from our post for Day 5, we just need to make a few changes to make 
it work.

```
const maxProd = (nums) => {
  let maxProd = nums[0]
  let cmin = nums[0]
  let cmax = nums[0]

  for(i = 1; i < nums.length; i++){
    const temp = cmax
    cmax = Math.max(nums[i], nums[i] * cmin, nums[i] * cmax)
    cmin = Math.min(nums[i], nums[i] * cmin, nums[i] * temp)
    maxProd = Math.max(maxProd, cmax)
  }
  return maxProd
}
```

```
def max_prod(nums)
  current_max = nums[0]
  current_min = nums[0]
  max_prod = nums[0]

  nums[1..nums.length].each do |num|
    current_min, current_max = [num, num * current_min, num * current_max].minmax
    max_prod = [max_prod, current_max].max
  end
  max_prod
end
```
Just like with our last problem we are going to need a few variables. First, 
one to hold our answer, a second to hold our current max and our third is going 
to one to hold our current minimum. All of these are going to be set to the first 
number or our array. 

It’s that last one that really makes this answer work. Having a variable that 
will hold our minimum will cover us if we have any negative numbers. We can see 
this better as we get into our loop. Since our Ruby code is built using syntactic 
sugar, we are going to use our JavaScript to get a better idea as to what is 
going on. 

Our loop is going to be starting at 1 since we’ve already set our variables to 
the first number.  Within our loop we are going to need a variable that we’ve 
called temp that holds our current max. This will be used later in the loop to 
find the minimum. 

From there, we will be checking for the maximum between the current number of our 
loop, the product of our current number and the current min (cmin) and the 
product of the current number and the current max (cmax).  We can find the 
minimum using the same logic, except we will be changing out our cmax with our 
temp variable. 

And that is about it, we continue our loop until we are left with the maximum 
product. As we continue our way through this list, it is important to remember 
that each of these problems build on each other. 

Thanks for reading, as always if you have a different way to solve this post 
it in the comments.
