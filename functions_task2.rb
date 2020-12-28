#2.	Є рядок наступного вигляду: 4 літери, потім пробіл, потім ще 4 літери. Наприклад, такий рядок 'ФЫВА олдж'.
# Треба перетворити на наступний рядок 'АВЫФ ждло'. !!!! UTF-8

input_string = 'ФЫВА олдж'
output_string = input_string.split(" ").map{|el| el.reverse}.join(" ")
puts output_string
