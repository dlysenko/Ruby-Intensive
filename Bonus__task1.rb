# Compare two strings by comparing the sum of their values (ASCII character code).
# For comparing treat all letters as UpperCase.
# Null-Strings should be treated as if they are empty strings.
# If the string contains other characters than letters, treat the whole string as it would be empty.

def ascii_sum_equal?(string1, string2)
  string1 = "" if string1.nil?
  string2 = "" if string1.nil?

  ascii_value_array1 = string1.upcase.bytes
  ascii_value_array2 = string2.upcase.bytes

  ascii_sum1 = 0
  ascii_sum2 = 0

  ascii_value_array1.each do |el|
    if el.between?(65,90)
      ascii_sum1 += el
    else
      ascii_sum1 = 0
      break
    end
  end

  ascii_value_array2.each do |el|
    if el.between?(65,90)
      ascii_sum2 += el
    else
      ascii_sum2 = 0
      break
    end
  end
  ascii_sum1 == ascii_sum2 ? true : false
end

puts ascii_sum_equal?("az /n ","ZA")
puts ascii_sum_equal?("az","ZA")
puts ascii_sum_equal?(nil,"")
puts ascii_sum_equal?('rtbmkl',"jiijjb")