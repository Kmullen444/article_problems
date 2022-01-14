# Curated List Day 4: Product of Array Except Self


Welcome back! Today we are working on day 4 of our series of the curated list 
that can be found in a post on TeamBlind.com. As we continue our way through 
The Array Portion with the question named “Product of Array except self” that 
reads:

>Given an integer array nums, return an array answer such that answer[i] is 
>equal to the product of all the elements of nums except *nums[i]*.
>The product of any prefix or suffix of nums is guaranteed to fit in a 32-bit integer.
>You must write an algorithm that runs in O(n) time and without using the division operation


Let’s start by breaking this down. We know that we are going to need a new 
array that is going to hold the final answer. To start off, let's create a new 
array with the first element being 1. Doing this assumes that the prefix of the 
first number of our nums array is going to be one. With our new array created, 
let’s put our new variable at the bottom of our method to be returned.

```
def product_except_self(nums)
  answer = [1]

  answer
end
```
```
function exceptSelf(nums){
  let answer = [1]

  return answer
}
```

Now let’s move to the next piece of information we have. We know that we are 
going to have a left and a right of our array that is going to be split at the 
current index of our loop. Start off by setting up the loop we are going to need 
to create the product of numbers from left to right. You can create an array that 
will hold those numbers, since we have our answer array we can store them there.

```
def product_except_self(nums)
  answer = [1]
  
  (1...nums.length).each do |i|
    answer[i] = answer[i-1] * nums[i-1]
  end

  answer
end
```
```
function exceptSelf(nums){
  let answer = [1]
  
  for(i = 1; i < nums.length; i++){
    answer[i] = answer[i-1] * nums[i-1]
  }

  return answer
}
```

Now with that done, we can see a few things. With our loop that is going to be 
working from left to right we are going to be starting off at 1. This is our 
prefix that we set to 1 earlier, which we assume is the number that is outside 
of our array. Our reason for doing this can be seen in the loop itself. Each 
time we loop through the array we are getting the product of one to the left of 
both the answer and the nums arrays. Once we have finished with that loop we 
should have every number to the left of our *i*. 

```
def product_except_self(nums)
  answer = [1]
  
  (1...nums.length).each do |i|
    answer[i] = answer[i-1] * nums[i-1]
  end

  r = 1
  (nums.length-1).downto(0) do |i|
    answer[i] *= r
    r *= nums[i]
  end

  answer
end
```
```
function exceptSelf(nums){
  let answer = [1]
  
  for(i = 1; i < nums.length; i++){
    answer[i] = answer[i-1] * nums[i-1]
  }

  let r = 1
  
  for(j = (nums.length-1); j > -1; j--){
    answer[i] *= r
    r *= nums[j]
  }

  return answer
}
```



Now we can move on to creating the other side of our loop. Just like with the 
last loop we are going to need to set a variable that will hold our surfix, we 
will assume that this number lives outside of our array and will be set to *r*. 
This time our loop is going to move from right to left. As we do this, we are 
going to get the product of the answer at the current index and our *r*. After 
our r variable is set to the current nums index. This will loop until it 
finishes and returns our final answer. 


Well, that’s all for today,  as always if you have a different way of solving 
these, share them in the comments. Thanks for reading!

