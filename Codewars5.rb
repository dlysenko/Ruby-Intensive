=begin
https://www.codewars.com/users/dima.lysenko/
https://www.codewars.com/kata/57eb8fcdf670e99d9b000272
Given a string of words, you need to find the highest scoring word.

Each letter of a word scores points according to its position in the alphabet: a = 1, b = 2, c = 3 etc.

You need to return the highest scoring word as a string.

If two words score the same, return the word that appears earliest in the original string.

All letters will be lowercase and all inputs will be valid.
=end

def high(x)

  array = x.downcase.split(" ")
  #p array
  results = []
  max = 0
  max_index  = 0
  k = 0
  array.each do |word|
    sum = 0
    word.split("").each {|char|
      sum += char.ord - 96
    }
    if sum > max
      max = sum
      max_index = k
    end
    k += 1
    results.push(sum)
  end
  #p results
  #p array[results.each_with_index.max[1]]
  #p array[results.rindex(results.max)]
  #
  array[max_index]

end
puts high('man i need a taxi up to ubud')