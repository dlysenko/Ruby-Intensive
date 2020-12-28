#2.     Є масив:
# temperatures = [33, 15, 17, 20, 23, 23, 28, 40, 21, 19, 31, 18, 30, 31, 28, 23, 19, 28, 27,
# 30, 39, 17, 17, 20, 19, 23, 28, 30, 34, 28]
# Знайти три найменших значення, три найбільших і три середніх.

temperatures = [33, 15, 17, 20, 23, 23, 28, 40, 21, 19, 31, 18, 30, 31, 28, 23, 19, 28, 27,
                30, 39, 17, 17, 20, 19, 23, 28, 30, 34, 28]
def Array3Sort(array)
  min3 = []
  max3 = []
  mean3 = []
  sortedArray = array.sort
  min3 = [sortedArray[0],sortedArray[1],sortedArray[2]]
  max3 = [sortedArray[-3],sortedArray[-2],sortedArray[-1]]
  mean = (array.size.to_f/2).round()
  mean3 = [sortedArray[mean-2],sortedArray[mean-1],sortedArray[mean]]
  #puts array.size,mean
  min3.each {|el| puts "min  #{el}"}
  mean3.each {|el| puts "mean  #{el}"}
  max3.each {|el| puts "max  #{el}"}

end

Array3Sort(temperatures)
