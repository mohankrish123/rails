#Class variables are shared among descendants of the class or module in which the class variables are defined.
class Thing
    @@classvar = 0
    attr_accessor :name
    def initialize(name)
        @name = name
        @@classvar += 1  
    end

    def show_classvars
        @@classvar
    end
end

puts "Example to demonstrate the class variables"
t = Thing.new("Mohan")
puts "Classvar number: #{t.show_classvars}"
t = Thing.new("Krishna")
puts "Classvar number: #{t.show_classvars}"
t = Thing.new("Sai")
puts "Classvar number: #{t.show_classvars}"
t = Thing.new("Kumar")
puts "Classvar number: #{t.show_classvars}"
t = Thing.new("Varupula")
puts "Classvar number: #{t.show_classvars}"
