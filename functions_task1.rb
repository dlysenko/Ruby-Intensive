# Перетворити рядок 'var_test_text' в 'varTestText'

def convertSnakeToCamel(str)
  separator = "_"
  array = str.chars
  result = []
  toCapital = false
  array.each do |el|
    if el == separator
      toCapital = true
    else
      toCapital == true ? result.push(el.upcase) : result.push(el)
      toCapital = false
    end
  end
  result.join("")
end

puts convertSnakeToCamel("var_test_text")
puts convertSnakeToCamel("var_test_text_dfdf_dsfdf_f__fff")
