=begin
https://www.codewars.com/users/dima.lysenko/
https://www.codewars.com/kata/5287e858c6b5a9678200083c
A Narcissistic Number is a positive number which is the sum of its own digits, each raised to the
power of the number of digits in a given base. In this Kata, we will restrict ourselves to decimal (base 10).
For example, take 153 (3 digits), which is narcisstic:
   1^3 + 5^3 + 3^3 = 1 + 125 + 27 = 153
and 1652 (4 digits), which isn't:
    1^4 + 6^4 + 5^4 + 2^4 = 1 + 1296 + 625 + 16 = 1938
The Challenge:
Your code must return true or false depending upon whether the given number is a Narcissistic number in base 10.
Error checking for text strings or other invalid inputs is not required, only valid positive non-zero integers will be passed into the function.
Move the first letter of each word to the end of it, then add "ay" to the end of the word.
Leave punctuation marks untouched.
=end

def narcissistic?(value)
  num_digit = value.to_s.size  # how many digits value has
  array_value = value.to_s.split("")
  eval_number = 0
  array_value.each do |el|
    eval_number += el.to_i**num_digit
  end

  value == eval_number ? true : false

end

