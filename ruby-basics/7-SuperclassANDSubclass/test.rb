class Superclass
    def initialize(name,nationality)
        @name = name
        @nationality = nationality
    end

    def get_name
        return @name
    end

    #One way of creating the method
    def set_name=(name)
        @name = name
    end

    def get_nationality
        @nationality
    end
    
    #Another way of creating the method
    def set_nationality(nationality)
        @nationality = nationality
    end
end

# The symbol `<` represents that the class `Subclass` is a descendent of `Superclass`
# Inherits the instance variable @name and the methods get_name and set_name from `Superclass`
# The super method passes the name to the same method of the `Superclass`. Eg: `initialize` here.
class Subclass < Superclass
    def initialize(name,nationality,id)
        super(name,nationality)
        @id = id 
    end

    def get_id
        @id
    end

    def set_id(id)
        @id = id
    end
end

ob = Subclass.new("Mohan","Indian",99)
puts "Inspecting the created object: #{ob.inspect}"
puts ""

puts "Printing the object id: "+ ob.get_id.to_s
puts ""

puts "Printing the name with variables that passed during the instance creation: " + ob.get_name
puts "#{ob.inspect}"
puts ""


#One way of assigning value to the method
ob.set_name = "Krishna"
puts "Printing the new name after modifying the vars at method level: " + ob.get_name
puts "#{ob.inspect}"
puts ""

puts "Get nationality: " + ob.get_nationality
puts "#{ob.inspect}"
puts ""

#Another way of assigning value to the method
ob.set_nationality("Australian")
puts "After setting nationality: " + ob.get_nationality
puts "#{ob.inspect}"
puts ""