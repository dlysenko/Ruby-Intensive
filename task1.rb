=begin
1. If you look at the clock and the time is 3:15, what is the angle between the hours and the minutes hands?
If this task is too easy for you, try to implement a common solution for any time (3:15, 3:20, 4:30 ... etc )
=end

#ANSWER IS 0 degrees
#Below is Ruby code for common solution for any time

print "Input hours: "
hours = gets.chomp.to_i
puts "Please check your input for hour in range 0-24" unless hours >= 0 && hours <= 24

print "Input minutes: "
minutes = gets.chomp.to_i
puts "Please check your input for hour in range 0-60" unless minutes >= 0 && minutes <= 60

print "Your input is: ", hours,":", minutes

# find angle between 00:00 and hour hand
if hours <= 12              # we suggest that hours could be as 12H and 24H formats
  angle1 = hours.to_f/12*360
elsif hours <= 24
  angle1 = (hours % 12).to_f/12*360
end

# find angle between 00:00 and minute hand
angle2 = minutes.to_f/60*360
# find angle between 00:00 and minute hand
angle_difference = angle2 - angle1

puts "\nThe angle between the hours and the minutes hands is #{angle_difference.round(3)} degrees"