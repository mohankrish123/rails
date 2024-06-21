# A module is like a class but, unlike classes, you cannot create objects from modules.
# Classes cannot inherit from modules. 
# If a class wants to use the code in a module it has to include or 'mix in' that module. 
# This makes it possible for a class to incorporate the features of multiple modules in a way that is a bit like 'multiple inheritance' – so even though a class can only have a single ancestor

# Module
module TalkModule
    attr_accessor :talk
end

# First category
class Animal
  attr_accessor :name
  attr_accessor :classification 

  def initialize(name, classification)
    @name = name
    @classification = classification
  end
end

class Dog < Animal
    include TalkModule
    def initialize(name,classification,colour,talk)
        super(name,classification)
        @colour = colour
        @talk = talk
    end 
end

dog = Dog.new("puppy","pet","black","bhow")
puts "Test to identify if the new object contains module attributes"
puts "Inspecting the dog object: \n#{dog.inspect}"
puts "Summary: Object includes the module attributes"
puts ""


# Second category
class Computer
    attr_accessor :type
end

class Robot < Computer
    include TalkModule
end

ro = Robot.new
ro.talk = "beep"
puts "Inspecting the robot object: \n#{ro.inspect}"
puts "Summary: The ro object on inspection is observed to have attribute of the module"
puts "#{ro.talk}"
puts ""
ro.type = "m1"
puts "Inspecting the robot object for the new attribute created at subclass level: \n#{ro.inspect}"
puts "#{ro.type}"
puts "Summary: The ro object has the new attribute."