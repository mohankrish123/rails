
# Ruby basics
In ruby, by default everything returns nil where the function isn't returning anything specifically or designed to return something.

### Methods Syntax
```
def say_hello(thing_to_say)
  puts thing_to_say
end
```

### How to check different methods available?
```
a = "Hello world!"
a.methods
```

### If syntax
```
if condition
  <action>
else
  <action>
end
```

### For loop syntax
```
for item in items
  print item
end
```
or
```
z = 1..10
z.each do |randomname|
  print randomname
end
12345678910=> 1..10
```
Refer: [For loops for ruby language](https://launchschool.com/books/ruby/read/loops_iterators) 