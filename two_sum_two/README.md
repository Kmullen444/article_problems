# Curated List Day Offish: Two sum two

## Hello and welcome to a curated list day off…..kinda. 
Today we are going to be talking about Two sum two that is a continuation of 
one of our first articles [Two Sum](https://github.com/Kmullen444/article_problems/tree/main/two-sum).
We can use these as a basis for the last question of our array section, [3 Sum](https://leetcode.com/problems/3sum/).

**NOW ONTO THE PROBLEM!**

> Given a 1-indexed array of integer numbers that is already sorted in 
> non-decreasing order, find two numbers such that they add up to a specific 
> target number. Let these two numbers be numbers[index1] and numbers[index2] 
> where 1 <= index1 < index2 <= numbers.length.

> Return the indices of the two numbers, index1 and index2, added by one as an 
> integer array [index1, index2] of length 2.

> The tests are generated such that there is exactly one solution. You may not 
> use the same element twice.

> Your solution must use only constant extra space.

Let’s dive in and start to pick this question apart. We have a few different 
options we can use here so let's explore those real quick. One, we can brute 
force with a nested loop that will check every pair of indices until we find 
our answer. Two, we can, with a small change to our code from Two Sum, take 
into account the index starting at 1 and use a Hash/Object that will also make 
sure that we are only returning one answer. Or three, we can think about it 
from the start of our array and the end (hence the name two points) and we can 
use this idea as a base for our 3 Sum problem.

First, let’s get the boilerplate stuff out of the way. We are going to need 
a left and a right variable. Our left will be set to 0 since we want our first 
value and our right will be set to the last with “nums.length-1”.

Now, we can talk about what our loop is going to be doing. We’ll need to, if 
we find our target, be returning our left and right indices at some point 
within our loop. So let’s start by adding those two together and see what we 
get. With the example array of [2, 7, 11, 15] and a target of 9, the first 
iteration of our loop will have our left = 2 and our right = 15. If we add 
those together we get 17 which is greater than 9. Because our total is greater 
than our target we know that we don’t need our total to get any larger, which 
since this array is sorted in ascending order means we don’t want to move our 
right value any further to the right. Instead we move it one to the left and 
check again. If at any point we find that our total is less than our target we 
again know that we don’t need it to get any smaller, in which case we would 
move our left value one to the right. 

We repeat this until we either return the indices + 1, per our question, or 
we reach a point where our left value is no longer less than our right and ends the loop.

```
def twoSum(nums, target)
  left  = 0
  right = nums.length-1

  while left < right
    return [left + 1, right + 1] if nums[left] + nums[right] == target
    nums[left] + nums[right] > target ? right -= 1 : left += 1
  end
end
```
```
function twoSum(nums, target) {
  let left  = 0;
  let right = nums.length-1;

  while (left < right) {
    if (nums[left] + nums[right] === target) return [left + 1, right = 1];
    (nums[left] + nums[right] > target)? right -= 1 : left += 1;
  }
}
```

And that’s it! Thanks for joining me on this little side quest to build a base 
for the next question. Shout out to [Neetcode](https://www.youtube.com/channel/UC_mYaQAE6-71rjSN6CeCA-g)
on youtube, solving this question first was a recommendation in their video [here](https://www.youtube.com/watch?v=jzZsG8n2R9A&t=600s)
on Three sum.

If you have a different way of doing this, post it in the comments. Make sure 
to check back soon for my write up of 3 Sum and see how this problem plays into 
it. As always, thanks for reading!
