=begin
https://www.codewars.com/users/dima.lysenko/
https://www.codewars.com/kata/5208f99aee097e6552000148
Given two arrays a and b write a function comp(a, b) (compSame(a, b) in Clojure) that checks whether the two
arrays have the "same" elements, with the same multiplicities.
"Same" means, here, that the elements in b are the elements in a squared, regardless of the order.
=end

def solution(string)
  # complete the function
  array = string.split("")
  array_of_capital = []
  array.each_with_index {|val, index| array_of_capital.push(index) if
  val.capitalize == val}
  #print array_of_capital
  k = 0
  array_of_capital.each do |number|
    if number > 0
      array.insert(number+k, " ")
      k += 1
    end
  end
  string = array.join("")
  return string
end

