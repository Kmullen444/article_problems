# Interview question

Today's question comes from [Dailycodingproblem.com](https://www.dailycodingproblem.com/). 
If you don’t know about dailycodingproblems.com I highly recommend checking them out. 
Everyday they send you a new question that was asked in an actual interview 
from a big name company, ranging from easy to hard. 

Today's problem comes from Salesforce and reads as follows: 
> Given an array of integers, find the maximum XOR of any two elements.

Now this is an interesting question, not in the way that it can be solved, but 
how the *“Bitwise Exclusive Or (Bitwise XOR)”* operation works. This will take 
the bit patterns of two equal lengths, and will result in each position is 1 
if both are different and 0 if both are the same, and will result in a completely 
new number. 

In order to better understand what is happening here, let’s take a look at a 
bit of code. 

```
25.to_s(2) # "11001
5.to_s(2) # "101" or "00101"

"11100.to_i(2) #28
```

In this example we take our integer, in this case 25, and run #to_s with our 
base being 2, we use base 2 due to the fact that we are working with binary. 
This will give us the bit code of the integer, which returns the string “11001”. 
This is what our Bitwise XOR operator is going to be using in its comparison. 
Now if we take 5 and do the same we get a string that contains “00101”. The 
extra zeros in the beginning of the string have been added back to keep both of 
our strings the same length. 

Now that we better understand how our Bitwise XOR works, we can start to compare 
each bit. In the first position of both strings, respectively, we have a 1 and 
a 0, so to our new bit code that is being created we add a “1” in the first 
position. Same with the second position and working through the rest of the 
code adding either a “1” if both are different or a “0” if both are the same.

In the end our return is “11100”. We can then run our #to_i with a base of 2 
and we get back 28.

This is more or less a breakdown of how our Bitwise XOR works. 

Now that we understand that, the actual code for our problem is pretty simple. 
To solve this we’ll need a variable to hold our greatest outcome of the operation 
which we will set to nil(in Ruby) or undefined(in Javascript). This will allow 
our function to take in both negative and positive numbers with no problem. 
This will also solve an edge case where we are given an array with 2 numbers, 
one of which is positive and one negative. This will be part of our conditional 
that checks if the outcome of our Bitwise XOR returns the greatest number has 
been seen within the loop itself. From here we will need two loops nested within 
each other, this will allow us to check one number against the other. Our 
conditional will live in our second loop. After the loops are finished we return 
the greatest outcome.

In both Ruby and JavaScript it is going to look something like this.

```
def xor_finder(arr)
  amount = nil

  arr.each do |num1|
    arr.each do |num2|
      xor = num1 ^ num2
      if amount.nil?
        amount = xor
      else
        amount = xor if xor > amount
      end
    end
  end
  amount
end
```

```
const xorFinder = (arr) => {
  let amount; 

  arr.forEach(num1 => {
    arr.forEach(num2 => {
      let xor = num1 ^ num2
      if (amount != undefined){
        if (amount < xor){
          amount = xor
        }
      } else {
        amount = xor
      }
    })
  })
  return amount
}
```

And that’s it! We get back the maximum of two of our elements from our Bitwise 
XOR operation. 

This is just one way to solve our problem. If you have a different way of doing 
this, please make sure to share it in the comments. Thanks for reading!

