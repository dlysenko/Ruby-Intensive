=begin
https://www.codewars.com/users/dima.lysenko/
https://www.codewars.com/kata/52774a314c2333f0a7000688
Write a function called that takes a string of parentheses, and determines if the order of the parentheses is valid.
The function should return true if the string is valid, and false if it's invalid.
=end
def valid_parentheses(string)
  open_symbol = "("
  close_symbol = ")"
  counter = 0
  array = string.split("")
  array.each do |el|
    if el == open_symbol
      counter += 1
    elsif el == close_symbol
      counter -= 1
      #puts "string is'#{string}' and message from prog: false" if counter < 0
      return false if counter < 0
    end
  end
  counter == 0? true : false

end