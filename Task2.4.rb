# Змінна min має число від 0 до 59. Визначити в яку чверть години потрапляє число,
# відповідно вивести на екран одне з значень: «перша», «друга», «третя», «четверта».

min = rand(59)

if min >= 0 && min < 15
  puts "перша"
elsif min < 30
  puts "друга"
elsif min < 45
  puts "третя"
elsif min <= 59
  puts "четверта"
else
  puts "please check the value"
end