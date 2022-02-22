# Curated List Day 9: 3Sum

## Welcome back! 
You know why you’re here, I know why you’re here, you can find the list we are 
working through [here](https://www.teamblind.com/post/New-Year-Gift---Curated-List-of-Top-75-LeetCode-Questions-to-Save-Your-Time-OaM1orEU)
so let’s just jump into it. Today our question is:

> Given an integer array nums, return all the triplets [nums[i], nums[j], 
> nums[k]] such that i != j, i != k, and j != k, and nums[i] + nums[j] + nums[k] == 0.

> Notice that the solution set must not contain duplicate triplets.

If you read our last article, you know that we’ve been building up to this 
question. You can find that post [here](https://github.com/Kmullen444/article_problems/tree/main/two_sum_two). 
Let’s start with a quick TLDL: if we have a sorted array, we can take two 
points in the array and add them together. If our result is greater than a 
target, we know that since the array is sorted we don’t need to look any 
further to the right, so we can move our right point over 1 to the left. If 
the result is less than our target, we know that we don’t need to look for a 
small result, so we move our left point over 1 to the right. We can loop 
through until we find the indices or an empty array if we don’t find it.

With this in mind, for our question today we know that we have 2 of our 3 
points covered. For the last point we can simply loop through each number of 
our array and see if the three points together equal 0.

So with that let’s jump into our code. Right off the bat we know we’ll set up 
our answer array and put it at the bottom to return once we exit out loop. In 
order for our 2 point concept to work we are going to need a sorted array so 
let’s do that here as well. 

```
def three_sum(nums)
  answer = []
  nums = nums.sort
```

```
function twoSum(nums) {
  let answer = [];
  nums = nums.sort();
```

**TO THE FIRST LOOP!**. Here we’ll start looping from the start of our array 
uptil the third to last number. As a side note, for reasons that I don’t 
understand, if we run the outer loop until the second to last number on 
LeetCode you get a faster output. If you do understand why that is please drop 
it in the comments.

```
(0..nums.length-3)each do |idx|
  next if idx > 0 && nums[idx] == nums[idx - 1]
  middle = idx + 1
  end_pos = num.length -1
```
```
for(i = 0; i < nums.length-3; i++){
  if (nums[i] === nums[i - 1] && i > 0) continue;
  let mid = i + 1;
  let ep  = nums.length-1;
```

Since we don’t want duplicates in our array that we will need to push to our 
answer array, we’ll skip to our next number if the current index of the loop 
is greater than 0 and the value at the index and one behind the index are equal. 
We are also going to need some variables, one for our middle point and one for 
the end. We put them here to make sure that their values are reset each time 
we start a new loop. So let’s set our middle point to the current index plus one 
and to our last value of our array. 

**TO THE SECOND LOOP!** This time we are going to be working with a similar 
code to our 2 sum II question, looping until the middle point is greater than 
the end point. For readability we are going to create a total variable that 
will hold the sum of our current value from our outermost loop, our middle 
value and our end value. 

```
while middle < end_pos do
  total = nums[idx] + nums[middle] + nums[end_pos]

  if total > 0
    end_pos -= 1
  elsif total < 0
    middle += 1
  else
    answer << [nums[idx], nums[middle], nums[end_pos]]
    middle += 1
    while nums[middle] == nums[middle - 1] && middle < end_pos
      middle += 1
    end
  end
end
```
```
while(mid < ep) {
  let total = nums[i] + nums[mid] + nums[ep];

  if (total > 0) {
    ep -= 1;
  } else if {
    mid += 1;
  } else {
    answer.push([nums[i], nums[mid], nums[ep]]);
    mid += 1;
    while (nums[mid] === nums[mid - 1] && mid < ep){
      mid += 1;
    }
  }
}
```

**NOW TO THE CONDITIONAL!** We are going to be checking 3 things here. 
First, is our target greater than 0? If it is, we will move our end point 
over one to the left. If it isn’t well, move on to our second check. Is our 
target less than 0? If it is, we want to move our middle point one to the right. 
And finally third if neither of those things are true we found a total that 
equals 0 so we want to push those values into our answer array and since we 
may find other possible combinations that include our outermost value we are 
going to move our middle point over to the left. 

**BUT THAT’S NOT ALL!** We need one last loop just in case we find that our 
new middle value is equal to the value before it and the middle index is less 
than our end index. While that is true we will continue to move the middle 
index over to the left by 1. This will allow the code in the earlier part of 
the loop to move the other points if necessary, or to push a new unique triple 
pair to the answer array or break out of the loop. 

This will continue until our loop is finished and we are left with our answer 
array we placed down at the bottom in the beginning of our explanation. 

**HERE'S THE FINAL CODE!**

```
def three_sum(nums)
  answer = []
  nums = nums.sort

  (0..nums.length-3).each do |idx|
    next if idx > 0 && nums[idx] == nums[idx - 1]
    middle = idx + 1
    end_pos = nums.length-1

    while middle < end_pos do 
      total = nums[idx] + nums[middle] + nums[end_pos]

      if total > 0
        end_pos -= 1
      elsif total < 0
        middle += 1
      else
        answer << [nums[idx], nums[middle], nums[end_pos]]
        middle += 1
        while nums[middle] == nums[middle - 1] && middle < end_pos
          middle += 1
        end
      end
    end
  end
  answer
end
```

```
function twoSum(nums) {
  let answer = [];
  nums = nums.sort();

  for(i = 0; i < nums.length-3; i++){
    if (nums[i] === nums[i - 1] && i > 0) continue;
    let mid = i + 1;
    let ep = nums.length-1;

    while(mid < ep){
      let total = nums[i] + nums[mid] + nums[ep];

      if (total > 0) {
        ep -= 1;
      } else if (total < 0) {
        mid += 1; 
      } else {
        answer.push([nums[i], nums[mid], nums[ep]]);
        mid += 1;
        while (nums[mid] === nums[mid - 1] && mid < ep){
          mid += 1;
        }
      }
    }
  }
  return answer;
}
```

And that’s it, we are one step closer to finishing the array portion of our list. As 
always if you have a different way to solve please post it in the comments. 

Thanks for reading and until next, see ya!

