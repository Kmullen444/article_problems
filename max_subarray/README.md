# Curated List Day 5: Max-subarray


Welcome back to day 5 as we journey through the curated list of interview 
questions that can be found at [TeamBlind.com](https://www.teamblind.com/post/New-Year-Gift---Curated-List-of-Top-75-LeetCode-Questions-to-Save-Your-Time-OaM1orEU)
Our question today reads:

> “Given an integer array nums, find the contiguous subarray (containing at least 
> one number) which has the largest sum and return its sum.

> A subarray is a contiguous part of an array.”

Let’s look at the code first and we can break it down from there.

```
def max_sub(nums)
  current_sum = nums[0]
  max_sum     = nums[0]

  nums[1..nums.length].each do |num|
    current_sum = [current_sum + num, num].max
    max_sum     = [max_sum, current_sum].max
  end
  max_sum
end
```

```
function maxSub(nums){
  let maxSum = nums[0]
  let sum    = nums[0]

  for(i = 1; i < nums.length; i++){
    sum    = Math.max(nums[i], nums[i]+sum)
    maxSum = Math.max(maxSum, sum)
  }
  return maxSum
}
```

Our code here is pretty straight forward. In both instances we are going to 
create two variables, each of which is set to the first number of our given 
nums array. For the example with an array of [5,4,-1,7,8] , they will both be 
set to 5. 

Now we are going to need to loop through our nums array. Since both of our 
variables currently hold our first number we can go ahead and skip over it and 
start our loops at 1 instead of 0. With that in mind, each time we loop we are 
going to be doing a few things. First we are going to be checking if our number 
in our nums array at 1, which currently equals 4, against the nums[1] plus sum, 
which we set to 5. At the end of this, our sum is going to be set to 9. The 
second we are doing is we are going to check our max sum, which is currently 
set to 5, against our sum and take the max of the two of them.

We continue our loop, each time taking the max of the possible numbers. Until 
we finally return our final sum, in the case of our given example, we return 23.

And that’s it, today was a pretty quick one. As always, if you have a different 
way to solve today's problem, post it in the comments. Thanks for reading, and 
I’ll see you all in the next one. 

