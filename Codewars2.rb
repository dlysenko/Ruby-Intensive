# https://www.codewars.com/users/dima.lysenko/
# https://www.codewars.com/kata/54ba84be607a92aa900000f1
# An isogram is a word that has no repeating letters, consecutive or non-consecutive.
# Implement a function that determines whether a string that contains only letters is an isogram.
# Assume the empty string is an isogram. Ignore letter case.


def is_isogram(string)
  return true if string.size == 0

  array = []
  k = 0

  string.downcase.each_char do |l|
    k += 1
    unless array.include?(l)
      array.push l
      return true if k == string.size
    else
      return false
    end
  end

end
