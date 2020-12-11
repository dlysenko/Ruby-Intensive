=begin
https://www.codewars.com/users/dima.lysenko/
https://www.codewars.com/kata/55f2b110f61eb01779000053
Given two integers a and b, which can be positive or negative, find the sum of all the integers between
including them too and return it. If the two numbers are equal return a or b.

Note: a and b are not ordered!
=end

def get_sum(a,b)
  return a if a == b

  sum = 0
  if a < b
    (a..b).each {|k| sum += k}
  else
    (b..a).each {|k| sum += k}
  end

  sum
end