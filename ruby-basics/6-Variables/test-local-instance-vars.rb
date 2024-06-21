puts "******** Local variables *************"
age = 10
_Age = 20
p age
p _Age

puts ""

puts "******** Instance variables *************"
class Customer 
      
    def assign_variables(name) 
          
   # Instance Variables      
    @cust_name = name 
    end
      
    # displaying result 
    def display_details() 
       return @cust_name
    end

    # displaying result using puts
    def display_details_using_puts() 
        puts @cust_name
    end
end
     
# Create Objects 
# Examples of local variables as well
cust1 = Customer.new 
cust2 = Customer.new

# Assign variables
printf "Enter the name of cust1: "
name = gets
cust1.assign_variables("#{name}") 

# Call Methods 
# Experiment1
puts "Experiment1: To test whether instance variables need initialization"
puts "Basically, they should return nil values if not initialized"
puts ""
puts "Printing the details of the cust1"
puts cust1.display_details()
puts cust1.display_details().class
puts ""

puts "Printing the details of the cust2"
p cust2.display_details()
puts cust2.display_details().class
puts ""

puts "## Result: "
puts "Based on the cust2 experiment it's evident that we don't have to initialize the instance variables"
puts ""


# Experiment2
puts "Experiment2: To test how method values are displayed"
puts "** Using p method **"
p cust1.display_details()
puts ""

puts "** Using puts method **"
puts cust1.display_details() 
puts ""

puts "** Without using any print methods, but the returning the value in the method **"
cust1.display_details()
puts "**Result: Method cust1.display_details() by itself isn't displaying anything unless a print method is used to display"
puts ""

puts "** Using puts in method itself **"
cust1.display_details_using_puts()
puts ""
puts "**Experiment2 result: Overall, we have to use some print method to get the value"
puts ""

puts "Experiment2: To test whether instance variables need initialization"
puts "Basically, they should return nil values if not initialized"
puts ""
puts "Printing the class"
puts cust1.display_details().class
puts ""

puts "Even though we haven't declared any values to the cust2 variables, it's not throwing error"
p cust2.display_details()
puts cust2.display_details().class
puts ""

puts "## Result: "
puts "Based on the cust2 experiment it's evident that we don't have to initialize the instance variables"