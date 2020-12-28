# 4.     You are going to be given an array of integers. Your job is to take that array and find an index N where
# the sum of the integers to the left of N is equal to the sum of the integers to the right of N. If there is no
# index that would make this happen, return -1.
#
# For example:
# Let's say you are given the array [1,2,3,4,3,2,1] - Your function will return the index 3, because at the 3rd
# position of the array, the sum of left side of the index ([1,2,3]) and the sum of the right side of the index
# ([3,2,1]) both equal 6.
# [1,100,50,-51,1,1] - Your function will return the index 1, because at the 1st position of the array, the sum
# of left side of the index ([1]) and the sum of the right side of the index ([50,-51,1,1]) both equal 1.
# You need to test the solution on the next arrays:
# [20,10,-80,10,10,15,35]
# [10,-80,10,10,15,35]


def meanIndex(array)
  array.each_with_index.map do |el,index|
    # puts el, index
    # print array.slice(0,index),array.slice(0,index).sum
    # print array.slice(index+1,array.size),array.slice(index+1,array.size).sum
    # puts
    return index if array.slice(0,index).sum == array.slice(index+1,array.size).sum
  end
  return -1
end

puts meanIndex([20,10,-80,10,10,15,35])
puts meanIndex([10,-80,10,10,15,35])
puts meanIndex([1,100,50,-51,1,1])
puts meanIndex([1,2,3,4,3,2,1])
