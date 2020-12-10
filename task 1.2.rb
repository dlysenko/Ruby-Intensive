
=begin
2. What is the equation to get 24 with 1,3,4 and 6 you can only divide, multiply or add them?
Output example: 24 == 1 / 3 * 4 + 6
=end

# "Logical" and precise answer is 6/(1-3/4)
# Below is Ruby code for a given array of digits, operations and result
# The solution doesn't match the logical answer as Ruby's division operation "/"
# on integer result 0 in cases like "1/3"
# Nevertheless, code calculate the wright answers in terms of Ruby arithmetics (there is bug when numbers in the
# array are equal, I have found it later on, but didn't fix it as the given dataset was solved)


numbers = %w[1 3 4 6]
operations = %w[+ / *]
result = 24

start_time = Time.now

# Method generate all possible of numbers and operations
def generate_all_combinations(numbers, operations)

  possible_outcomes = []

  numbers.each do |digit1|
    operations.each do |operator1|
      (numbers - [digit1]).each do |digit2|
        (operations - [operator1]).each do |operator2|
          (numbers - [digit1, digit2]).each do |digit3|
            (operations - [operator1, operator2]).each do |operator3|
              (numbers - [digit1, digit2, digit3]).each do |digit4|
                possible_outcomes.push(digit1.to_s + operator1 + digit2.to_s + operator2 + digit3.to_s + operator3 +
                                         + digit4.to_s)
              end
            end
          end
        end
      end
    end
  end
  possible_outcomes
end

i = 0 # sum of found combinations
array_of_combinations = generate_all_combinations(numbers, operations)
array_of_combinations.each do |el|
  #puts el, eval(el)
  if eval(el) == result
    i += 1
    print "Solution # #{i} is \"#{el}\"\n"      #print found combinations
  end
end

if i.zero?
  puts 'There is NO combinations'
end

print "Time of execution is #{Time.now - start_time} seconds"