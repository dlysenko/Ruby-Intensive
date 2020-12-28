# 5.     You need to find out a unique value in array, you are given arrays:
# - [ 1, 1, 1, 2, 1, 1 ] => 2
# - [ 0, 0, 0.55, 0, 0 ] => 0.55
# - [3,1,5,3,7,4,1,5,7] => 4

def uniqueValue(array)
  array.find { |c| array.count(c) == 1 } || "not exist"
end

puts uniqueValue([ 1, 1, 1, 2, 1, 1 ])
puts uniqueValue([ 0, 0, 0.55, 0, 0 ])
puts uniqueValue([3,1,5,3,7,4,1,5,7])
puts uniqueValue([3,1,5,3,7,4,1,5,7,4])
