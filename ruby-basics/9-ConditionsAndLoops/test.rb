# Loops
# For loop
puts "Testing for loop"
for a in 1..5 do
 puts "Executing the for loop for the #{a} time/times"
end
puts ""

# While loop
puts "Testing while loop"
x = 0
while x < 5 do
puts x
x += 1
end
puts "Summary: while loop executes until condition is true and stops executing when false"
puts ""

# Until
puts "Testing until loop"
until x == 10 do
puts x
x += 1
end
puts "Summary: until loop executes until condition is false and stops executing when true"
puts ""

# Conditions
# If condition
puts "Testing if condition"
if x > 2
    puts "x is greater than 2 and the value of x is #{x}"
 elsif x <= 2 and x!=0
    puts "x is 1"
 else
    puts "I can't guess the number"
end
puts ""

# Unless condition
puts "Testing unless condition"
aDay = 'Sunday'
unless aDay == 'Saturday' or aDay == 'Sunday'
daytype = 'weekday'
else
daytype = 'weekend'
end
puts "The value is #{daytype}"
puts "Summary: Unless the given condtion is true, the following will be the value"
puts ""

# Case condition
puts "Testing case condition"
$age =  5
case $age
when 0 .. 2
   puts "baby"
when 3 .. 6
   puts "little child"
when 7 .. 12
   puts "child"
when 13 .. 18
   puts "youth"
else
   puts "adult"
end
puts ""