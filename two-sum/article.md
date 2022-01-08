#Curated Questions: Day 1


##Happy New Year!

With the new year comes a new chance to grow and learn, so this year we are 
going to start with a post and a list. This list is from a Facebook engineer 
and has what they consider are the 75 most important questions to get you up 
to speed for upcoming interviews. The list can be found here at 
[Team Blind Top 75 LeetCode questions](https://www.teamblind.com/post/New-Year-Gift---Curated-List-of-Top-75-LeetCode-Questions-to-Save-Your-Time-OaM1orEU)
. This is by no means a comprehensive list 
and there is always more to learn and please note that some of these questions 
will need LeetCode Premium to access.

With that out of the way let’s jump into our first problem and kick off the new year. 

Our first problem will be **Two Sum** and reads as: 

“Given an array of integers nums and an integer target, return indices of the 
two numbers such that they add up to target.

You may assume that each input would have exactly one solution, and you may 
not use the same element twice.

You can return the answer in any order.”

This question also has a follow up: 
“Can you come up with an algorithm that is less than O(n2) time complexity?”

Let’s start by breaking this down so we get a sense of where to start. To 
start, we know that we are going to have to return an array of indices, and 
that the numbers of our array can only be used once, we need to make sure that 
we aren’t checking a number more than once. 

We can start by creating the array that we are going to contain our indices 
when we find them and from there we can set up our nested loops. We want to 
make sure we have access to the index of each number. In Ruby we can do this 
using Array#each_with_index so we will be using this method for both of our 
loops. In JavaScript we are going to be using two for-loops.

Now finally, we have the conditional that makes this whole thing work. This 
will live in our second loop and check if the sum of two numbers equals the 
target and if we are seeing these numbers for the first time. If our conditional 
is true then we will return the indices.

Here is the code for the first part of our problem.

`
def two_sum(arr,taget)
  
  arr.each_with_index do |num1, idx1|
    arr.each_with_index do |num2, idx2|
      sum = num1 + num2
      return [idx1, idx2] if sum == target && idx1 < idx2
    end
  end
 end
`
`
const twoSum = (arr, target) => {
  for(i = 0; i < arr.length; i++){ 
    for(j = 0; j < arr.length; j++){
      let sum = arr[i] + arr[j]
      if (sum === target){
        return [i, j]
      }
    }
  }
}
`

Now onto the follow up question, "Can you come up with an algorithm that is less 
than O(n2) time complexity?”

Before we start refactoring our code, let’s make sure we understand what is 
being asked. Our current code has a time complexity of O(n2). Let’s break this 
down a little further, when it comes to loops, the time complexity is judged 
by how many times the innermost statement is executed. Because this is an O(1) 
statement, in that it is a conditional, it is constant. This combined with our 
two loops, gives us our O(n2). 


The code below, shows an O(n) answer first in Ruby then in JavaScript is one 
way to handle this. 

`
def two_sum(arr, target)
  pairs = {}
  arr.each_with_index do |num, idx|
    if pairs[target - num]
      return pairs[target - num], idx
    end
    pairs[num] = idx
  end
end
`

`
const two_sum =(arr, target) => {
  let sums = {}

  for(i = 0; i < arr.length; i++){
    if(target - arr[i] in sums){
      return [sums[target - arr[i]], i]
    } else {
    sums[arr[i]] = i
  }
}
`

Here, in our single pass hash methods, we can use Hash/Object with a single 
loop to give us an O(n). We do this by first creating our variable for the 
hash/object. From there we are going to loop through each element of the array. 
Each time we are going to check, if our target number minus the current number 
the loop is on, is in our hash/object. If it is, we want to return that and the 
current index, if not then we want to add the current number as our key and the 
current index as its value.

And that’s it, 1 day down.
If you have any questions or have another way to solve today's problem please 
share it in the comments.

As always, thanks for reading!

