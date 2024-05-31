class Hello
  def initialize(firstname)
    @firstname = firstname
  end

  def hello1()
    puts ("Hello #@firstname!")
  end

  def hello2(lastname)
    @lastname = lastname 
    puts ("Hello #@lastname!")
  end
end

puts "## Example to test the initialize method ##"
object = Hello.new("Mohan")
object.hello1
puts ""

puts "## Example which passes instance variable at method level without initialization during object creation ##"
object.hello2("Varupula")