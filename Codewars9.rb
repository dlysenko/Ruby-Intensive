=begin
https://www.codewars.com/users/dima.lysenko/
https://www.codewars.com/kata/5208f99aee097e6552000148
Move the first letter of each word to the end of it, then add "ay" to the end of the word.
Leave punctuation marks untouched.
=end

def pig_it(text)
  array = text.split(" ")
  array_pig = []
  array.each do |word|
    if "?,.!".include?(word)
      array_pig.push(word)
    else
      array_pig.push(word[1..-1] + word[0] + "ay")
    end
  end
  array_pig.join(" ")
end
