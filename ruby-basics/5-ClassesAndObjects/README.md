### Class syntax
```
class Hello
  def helloworld
    puts ("Hello World!")
  end 
end
```

### How to call a class or create an object
```
object = Hello.new
object.helloworld
```

### Methods Syntax
In ruby, even without class and object creation, a method can be used to execute.
```
def say_hello(thing_to_say)
  puts thing_to_say
  puts ("#{thing_to_say}")
end
```

Method execution
```
say_hello("Hello world!")
```
