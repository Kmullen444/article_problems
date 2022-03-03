# Curated List Day 10: Container With Most Water

## Hello! And welcome back to our series working through the curated list that can be found [here](https://www.teamblind.com/post/New-Year-Gift---Curated-List-of-Top-75-LeetCode-Questions-to-Save-Your-Time-OaM1orEU). 

Now let’s get to it and take a look at the last problem in the array section of the list.

Today’s question is **Container with Most Water** that reads:

> You are given an integer array height of length n. There are n vertical 
> lines drawn such that the two endpoints of the ith line are (i, 0) and (i, height[i]).

> Find two lines that together with the x-axis form a container, such that 
> the container contains the most water.

> Return the maximum amount of water a container can store.

> Notice that you may not slant the container.

After looking over the problem on LeetCode and seeing the picture of the 
graph, I was instantly reminded of our last two articles. Like in those 
problems we are going to be working with two points of the given array.

With that in mind, *TO THE CODE!* We’ll need a few variables. 
First a left point that we will set to 0 for the first element of our array. 
Second will be a right point that will be set to the last element of the given 
array. Finally a max area that we will set to 0 and set to return once our loop 
is finished.

```
left_point = 0
right_point = height.length-1
max_area = 0
```

```
let l = 0;
let r = height.length-1;
let maxArea = 0;
```

*NOW TO THE LOOP!* As we move through our loop we’ll be moving our two points 
closer together. Because of that we will want to loop while our left point is 
less than our right.

```
while left_point < right_point

end
```

```
while (l < r){

}
```

*LET’S MOVE INSIDE THE LOOP!* This is where the meat and potatoes 
(boil em, mash em, put em in a stew) lives. We are going to need to 
calculate the current area of our container, to do that we can take the 
result of our right index minus our left (gives us the width of the container) 
and times it by the minimum of the right value and the left value 
(since our container can’t be slanted).

```
while left_point < right_point
  current_area = (right_point - left_point) * [height[left_point], height[right_point]].min

  max_area = current_area if current_area > max_area

  height[left_point] < height[right_point] ? left_point += 1 : right_point -= 1
end
```

```
while(l < r) {
  let current = (r - l) * Math.min(height[l], height[r]);

  if (current > maxArea) maxArea = current;

  (height[l] < height[r]) ? l += 1 : r -= 1;
}
```

*TO THE CONDITIONALS!* We are going to be checking two separate things. 
First we want to see if our current area is greater than our max, if it 
is we want to change the value of our max area to the current area. And 
second we want to check if the value of the left value is less than the 
right value. If it is we are going to want to increment the left point value 
and if not we want to decrement the right pointer.

```
def most_water(height) 
  left_point = 0 
  right_point = height.length-1
  max_area = 0

  while left_point < right_point
    current_area = (right_point - left_point) * [height[left_point], height[right_point]].min

    max_area = current_area if current_area > max_area

    height[left_point] < height[right_point] ? left_point += 1 : right_point -= 1
  end
  max_area
end
```

```
const mostWater = (height) => {
  let l = 0;
  let r = height.length-1;
  let maxArea = 0;

  while(l < r) {
    let current = (r - l) * Math.min(height[l], height[r]);

    if (current > maxArea) maxArea = current;

    (height[l] < height[r]) ? l += 1 : r -= 1;
  }
  return maxArea;
}
```

*THAT’S ABOUT IT!* We will continue looping through our array until we 
find ourselves with a left point that is no longer less than the right 
and we return the greatest max area. 

These last few problems have really shown why it’s such a great idea to build 
a foundation of knowledge. Not only does it make questions like this super 
easy but it also serves as a bit of a confidence boost. 

## Thanks for reading!

As always if you have another way to solve this please post it in the comment.
Be sure to check back soon as we move into the binary section on the list.

