Curated List Day 3: Contains Duplicates

Welcome back to day 3 as we work through the list of interview questions found 
on [TeamBlind.com](https://www.teamblind.com/post/New-Year-Gift---Curated-List-of-Top-75-LeetCode-Questions-to-Save-Your-Time-OaM1orEU). Today we continue our work through the array portion with Contains Duplicates.

The question reads as follows: 
>Given an integer array nums, return true if any value appears at least twice 
>in the array, and return false if every element is distinct.”

So let’s dig in and see what we are going to be doing. We know that we are 
going to be returning a boolean. We also know that we are going to need to 
check every number within our array, so we are going to be needing a loop.

Now because we are going to be dealing with a question that needs us to check 
the uniqueness of an object, we can use our Hash/Object. When it comes to 
hashes, we know that it can only contain a single unique key. This makes a lot 
of our work pretty easy today. 

We are going to want to use our Hash/Object like we did in Two-sum as a way to 
store each of our numbers as a key. As we loop through and see the number for 
the first time we are going to want to store that within our hash with a value 
of true. That way if at any point we see that number again we can return true. 
If we finish our loop and haven’t returned true then we know that there isn’t a 
duplicate and we can return false.

```
def contains_dup(nums)
  nums_counted = {}

  nums.each do |num|
    if nums_counted[num]
      return true
    else
      nums_counted[num] = true
    end
  end
  false
end
```

```
const containsDup = (nums) => {
  let counted = {}

  for(i = 0; i < nums.length; i++){
    if(counted[num[i]]){
      return true
    } else {
      counted[num[i]] = true
    }
  }
  return false
}
```

And that about does it for today. As we continue on through this list, it’s 
important to remember to draw what we can from our past questions. This not 
only makes answering these questions a lot easier and fast but will prove to 
yourself that you fully understand the concepts you’ve used. If you’re like me, 
self taught, it can also be a bit of a confidence boost. 

Thanks for reading. As always if you have another to solve this problem please 
share it in the comments.

