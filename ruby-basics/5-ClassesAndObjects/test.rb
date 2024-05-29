class Hello
    def hello(name)
      puts ("Hello #{name}!")
    end 
  end

object = Hello.new
#object.hello("Mohan")

def say_hello(thing_to_say)
  puts thing_to_say
  puts ("#{thing_to_say}")
end

say_hello("Mohan")