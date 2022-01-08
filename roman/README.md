#Interview Question

Old-school Roman numerals. In the early days of Roman numerals,
the Romans didn't bother with any of this new-fangled subtraction
IX nonsense. No sir, it was straight addition, biggest to littlest -
so 9 was written VIIII, and so on. Write a method that, when
passed an integer between 1 and 3000 (or so), returns a string
containing the proper old-school Roman numeral. In other words,
old_roman_numeral 4 should return 'IIII'. 
For reference, these are the values of the letters used:
I = 1 
V = 5 
X = 10 
L = 50 
C = 100 
D = 500 
M = 1000

This was the question asked to me in my first live coding challenge. Let's just 
say it didn’t go well, and now I’m here with a better understanding and hoping 
to help you if you get this question. 

Let’s start to break this question down. We want to take in the number, loop 
through the given number and return the translated number.

The first thing we are going to want is what we are referencing, in this case 
the Roman Numerals. So let’s start by putting this in a Hash/Object using the 
letters as our keys and the numbers as our values. This allows for quicker look 
up than using an array. Lastly, before we get into the real meat of the problem, 
we need a variable to hold our translated number.

With that we can start in. First, we are going to want to loop until we have 
our answer. In situations like this, if I’m not sure what type of loop I’m 
going to need I try to fill in the middle as best as I can first. In this case, 
I know that I am going to need an inner loop that will check the number against 
the key and if that is met then I want to add the key to the answer variable. 
Lastly, since the key has been added to the answer I want to subtract the value 
to the integer.

Now, with our inner loop in place we can finish our outer loop. Since we are 
going to be subtracting our Hash’s value from the integer, we can loop until 
our integer is 0.

Finally, we want to return our answer variable. And that’s it, we have our 
answer. Below you can see the problem answered in Ruby and JavaScript. While 
the code between the two is a little different the concept is the same.

If you find this helpful or have a different way to solve this problem let me 
know in the comments

` 
def old_roman_numeral(num)
  refer = { "M" => 1000, "D" => 500, "C" => 100, "L" => 50, "X" => 10, 
            "V" => 5, "I" => 1 }
  numeral = ""

  until num == 0
    refer.each do |key, value|
      next if value > num
      numeral += key
      num = num - value
      break
    end
  end
  numeral
end
`


`
const oldRomanNumeral = (num) => {
  const numerals = ['M', 'D', 'C', 'L','X', 'V', 'I']
  const numbers  = [1000, 500, 100, 50, 10, 5, 1]
  let roman = ''
  let i = 0

  while(num > 0){
    numbers.forEach(number => {
      if(numbers[i] > num){
        return
      } else {
        roman += numerals[i]
        num = num - numbers[i]
        }
      })
      i++
    }
  return roman
  }`
