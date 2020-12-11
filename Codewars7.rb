=begin
https://www.codewars.com/users/dima.lysenko/
https://www.codewars.com/kata/550498447451fbbd7600041c
Given two arrays a and b write a function comp(a, b) (compSame(a, b) in Clojure) that checks whether the two
arrays have the "same" elements, with the same multiplicities.
"Same" means, here, that the elements in b are the elements in a squared, regardless of the order.
=end

def comp(array1, array2)
  return true if array1 == array2 and array1 == []
  return false if array1 == nil or array2 == nil

  if array1.sum <= array2.sum
    array_squared = array1.map do |e|
      e*e
    end
  else
    array_squared = array2.map do |e|
      e*e
      p array_squared
    end
  end

  if array_squared.sort == array2.sort
    return true
  elsif array_squared.sort == array1.sort
    return true
  else
    return false
  end
end
