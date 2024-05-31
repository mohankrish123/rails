puts ("*Experiment1*")
puts ("Example to show how interpolation works in ruby")
printf ("What's your name: ")
printf ("What's your name: ")
name = gets()
puts ("Hello #{name}")

puts ("")

puts ("*Experiment2*")
puts "Experiment how to print a combination of number and string"
puts "=========================================================="
puts "Basically, we can't add a number and a string straightaway. We have to convert that to string as shown below"
number = 1
str = "This number is: "
puts str + number.to_s
puts ("")

puts ("*Experiment3*")
puts ("Experiment to show how different prints work")
puts ("")

puts ("#### Testing puts method ####")
puts ("Hello world!")
puts ("Result: Prints with a new line")
puts ()
puts ("Result: puts method don't print nil. It only displays strings")
puts ("")

puts ("#### Testing p method ####")
p ("Hello world!")
puts ("Result: Prints with a new line and returns")

p ()
puts ("Result: Only p method prints nil")
puts ("")

puts ("#### Testing print method ####")
print ("Hello world!")
puts ("Result: Prints with no new line")
print ()
puts ("Result: print method don't print nil")
puts ("")

puts ("#### Testing printf method ####")
printf ("Hello world!")
puts ("Result: Prints with no new line. Identified print and printf are same")