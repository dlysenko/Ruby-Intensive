=begin
https://www.codewars.com/users/dima.lysenko/
https://www.codewars.com/kata/51b6249c4612257ac0000005
Create a function that takes a Roman numeral as its argument and returns its value as a numeric decimal integer.
You don't need to validate the form of the Roman numeral.
Modern Roman numerals are written by expressing each decimal digit of the number to be encoded separately,
starting with the leftmost digit and skipping any 0s. So 1990 is rendered "MCMXC"
(1000 = M, 900 = CM, 90 = XC) and 2008 is rendered "MMVIII" (2000 = MM, 8 = VIII). The Roman numeral for 1666,
"MDCLXVI", uses each letter in descending order.

=end
def solution(roman)

  sum = 0
  counter = 0
  dict_roman = {'I' => 1, 'V' => 5,'X' => 10,'L' => 50,'C' => 100,'D' => 500,'M' => 1000}
  decimal = roman.chars.map { |c| dict_roman.fetch(c) }
  decimal.each_with_index { |num, i|
    if i == 0 or decimal[i - 1] == decimal[i]
      counter += decimal[i]
    elsif decimal[i - 1] > decimal[i]
      sum += counter
      counter = decimal[i]
    else
      sum += decimal[i] - counter
      counter = 0
    end
  }
  sum += counter
end

puts solution("XXMMI")