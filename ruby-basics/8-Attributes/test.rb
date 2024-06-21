#These are ruby in built methods to ease process
#attr_reader: creates the get method with the same name as the variable
#attr_writer: creates the set method with the same name as the variable
#attr_accessor: creates both the set and get methods with the same name as the symbol
class Superclass
    attr_reader :name
    attr_writer :name
    # Can also be used with paranthesis
    #attr_reader( :name ) 
    #attr_writer( :name )
    def initialize(name)
        @name = name
    end
end

class Subclass < Superclass
    attr_accessor :id
    def initialize(name, id)
        super(name)
        @id = id 
    end
end

ob = Subclass.new("Mohan",99)
puts "Get the id: "+ ob.id.to_s
puts "#{ob.inspect}"
puts ""

ob.id = 100
puts "New set value for id: "+ ob.id.to_s
puts "#{ob.inspect}"
puts ""

puts "Get the name: " + ob.name
puts "#{ob.inspect}"
puts ""

# It's similar to assigning a value to instance variable directly
ob.name = "Krishna"
puts "New set value for name: " + ob.name
puts "#{ob.inspect}"