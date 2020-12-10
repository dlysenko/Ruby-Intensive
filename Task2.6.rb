#•	Є рядок з 6-ти чисел (наприклад: 385934). Перевірте, чи сума перших трьох чисел дорівнює сумі
# других трьох чисел. Якщо це так – виведіть 'так' інакше – 'ні'.
string = "385934"
sum_first_3_digits = 0
sum_second_3_digits = 0

for i in (0..5)
  if i <= 2
    sum_first_3_digits += string[i].to_i
  else
    sum_second_3_digits += string[i].to_i
  end
end

sum_first_3_digits == sum_second_3_digits ? puts("так") : puts("ні")