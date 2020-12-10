=begin
3. Get the number 2009 using arithmetic and eleven twos
Output example: 2912 == 2 + 222 * 22222 / 22
=end

#"Logical" answer is 2009 == 2222 - 222 + 22/2 - 2

# Below is my Ruby code for attempting this problem
# It doesn't work, but it was fun :-)
# Program combine all the combinations with given number and arithmetic
# The maximum of elements that my Mac was ready to calculate was 11.
# It was 11! = 39 916 800 combinations.
# Unfortunately the solution wasn't obtained by this method for given result
# Nevertheless we could see the array of results of combinations that not returned Syntax error

start_time = Time.now
numbers  = %w[2222 222 22 2 2]
operations = %w[+ * / -]
array = numbers + operations
result = 2009

combinations = array.permutation.to_a

strings = []
combinations.each do |el|
  k = el.join
  strings.push(k) unless k.include?"+*" # to exclude incorrect Regex expressions
end

arr = [] # array with the results of calculations
strings.each do |el|
  begin
    eval(el)
  rescue SyntaxError
    #p "error occured"
  else
    arr += [eval(el)]
    if eval(el) == result
      p el
      p eval(el)
    end

  end
end
p arr.sort.uniq

print "Time of execution is #{Time.now - start_time} seconds"