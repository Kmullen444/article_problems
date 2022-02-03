# Curated List Day 7: Find Minimum in Rotated Sorted Array

Welcome back to our series working through the curated list that can be found 
on [TeamBlind.com](https://www.teamblind.com/post/New-Year-Gift---Curated-List-of-Top-75-LeetCode-Questions-to-Save-Your-Time-OaM1orEU)
. Today we are working on Find Minimum in Rotated Sorted Array 
that reads:

> Suppose an array of length n sorted in ascending order is rotated between 1 
> and n times. For example, the array nums = [0,1,2,4,5,6,7] might become:

> [4,5,6,7,0,1,2] if it was rotated 4 times.
> [0,1,2,4,5,6,7] if it was rotated 7 times.

> Notice that rotating an array [a[0], a[1], a[2], ..., a[n-1]] 1 time results 
> in the array [a[n-1], a[0], a[1], a[2], ..., a[n-2]].

> Given the sorted rotated array nums of unique elements, return the minimum element of this array.

> You must write an algorithm that runs in O(log n) time.”

First thing I did after reading over this problem was to google O(log n). This 
returns a brief explanation about what O(log n) is and the example of a binary 
search. Now if you don’t know what a binary search is, we can take a minute and 
break that down really quick.

A binary search has always been funny to me since it just throws away half of 
the array cause we don’t need it. Let’s break this down really quick, as we 
work through our sorted in ascending order we find a point to start at, we 
then look to the right and left of that number. So say we are working with an 
array that looks like [1,2,4,5,6] and we are looking for 2. If we were to start 
at let’s say 4, we will break the given array into 2 halves. Since we know that 
our array is sorted in ascending order and what our number is, we can check to 
see if the number to the right of our 4 is greater or less than the number we 
are looking for, it is we can throw away the right side array and do the same 
thing in our left array until we return the given number. 

With that in mind let’s get to work on the problem at hand. We know that we can 
use a binary search, it meets the O(log n) aspect of our problem and our array 
is sorted in ascending order, albeit it’s been rotated. Now, this isn’t going 
to be an exact copy of our example of the binary search above, but the concept 
is similar. We are going to find a midpoint, look to the left of that midpoint 
and if we find what we are looking for we will return it, if not we will 
continue through the array. 

Let’s start writing some code. First we are going to need a left and a right, 
which we will use to track what will be the indices for our nums array. We will 
start our left set to 0 since we are looking at the indices of the given array. 
For that same reason we are setting the right to the last element of the array, 
using the length - 1. 

```
def find_min(nums)
  left = 0
  right = nums.length - 1
end
```
```
const findMin = (nums) => {
  let left = 0;
  let right = nums.length - 1;
}
```

Next let's set up our while loop, this is going to run until our left variable 
is greater than the right. In the loop we are going to create a midpoint variable, 
this is going to have a few parts to it. Since there is a little more to the 
JavaScript version we are going to talk about. 

``` 
cosnt findMin = (nums) => {
  let left = 0;
  let right = nums.length - 1;

  let mid = Math.floor(left + (right - low) / 2);
}
```


With our code here you can see a few things. The first being that we are using 
the built-in object Math and call the floor method, we do this to make sure that 
the equation inside the parentheses returns a whole number. Second, we are 
going to divide the result of our right minus left, then add the result of all 
of that to our left. Always remember your **PEMDAS!**

```
def find_min(nums)
  left = 0
  right = nums.length - 1

  while(low < right) 
    mid = left + (right - left) / 2
    nums[mid] > nums[right] ? left = mid + 1 : right = mid
  end
end
```

```
const findMin = (nums) => {
  let left = 0;
  let right = nums.length - 1;

  while (left < right) {
    let mid = Math.floor(left + (right - left) / 2);
    nums[mid] > nums[right] ? left = mid + 1 : right = mid;
  }
  return nums[left]
}
```

Finally, let's set up a conditional that will take us home. We will need to 
check if our value at nums[mid] is greater than our value at nums[right]. If 
it is then we can assume that our lowest value isn’t to the right, so we can 
set our low to mid + 1. If it’s not, we can assume the value is further to the 
right so we can set our right to our mid. 

We can continue with our loop until we hit a point where our left is less than 
our right and return the value at that index.

And that’s it, another day down. Thanks for reading! If you have another way of 
solving this problem or have anything to add make sure to put in the comments below. 
See you guys next time!

