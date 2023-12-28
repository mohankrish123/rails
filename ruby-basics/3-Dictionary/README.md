# Dictionary
```
irb(main):367> x = { "a" => "1", "b" => "2" }
=> {"a"=>"1", "b"=>"2"

irb(main):373> x["a"]
=> "1"
```

## Useful commands
```
irb(main):376> x.keys
=> ["a", "b"]

irb(main):378> x.values
=> ["1", "2"]

irb(main):383> x["c"] = 3
=> 3
irb(main):384> x
=> {"a"=>"1", "b"=>"2", "c"=>3}
```

## How to delete?
```
irb(main):577> x={"a"=>"1", "b"=>"2", "c"=>3}
=> {"a"=>"1", "b"=>"2", "c"=>3}
irb(main):580> x.delete("a")
=> "1"
irb(main):581> x
=> {"b"=>"2", "c"=>3}
```

## How to print each class/key/value using looping?
```
irb(main):577> x={"a"=>"1", "b"=>"2", "c"=>3}
=> {"a"=>"1", "b"=>"2", "c"=>3}
irb(main):546> x.each {|k,v| p v.class}
String
String
Integer
=> {"a"=>"1", "b"=>"2", "c"=>3}

For key and value, just use either k or v instead of v.class
```

## How to select only strings?
```
irb(main):517> x.select {|key,value| value.is_a?(String)}
=> {"a"=>"1", "b"=>"2"}
```

## How to use conditions inside the loop?
```
Eg: Deleting the values with strings alone
irb(main):568> x.each {|k,v| p x.delete(k) if v.class == String}
"2"
=> {"c"=>3}
irb(main):571> x
=> {"c"=>3}

Instead of v.class == String condition, we can also use v.to_a?(String) to identify if v belongs to String class.
```