# Array
```
x = [1,2,3,4]
```

## How to create a range" and convert to array?
```
irb(main):172> x = 1..10
=> 1..10

irb(main):182> p x.to_a
[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
```

## Shuffle
```
irb(main):219> x = (1..10).to_a
=> [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
irb(main):222> x.shuffle!
=> [8, 5, 7, 3, 2, 10, 1, 6, 9, 4]
```

## Useful array commands
```
irb(main):238> x.length
=> 10

irb(main):241> x.first
=> 8

irb(main):242> x.last
=> 4

# append to the first index
irb(main):246> x.unshift(11)
=> [11, 8, 5, 7, 3, 2, 10, 1, 6, 9, 4]

# append to the last index
irb(main):243> x.append(11)
=> [8, 5, 7, 3, 2, 10, 1, 6, 9, 4, 11]
irb(main):261> x.push(12)
=> [8, 5, 7, 3, 2, 10, 1, 6, 9, 4, 11, 11, 12]


# Remove duplicates
irb(main):253> x.uniq
=> [8, 5, 7, 3, 2, 10, 1, 6, 9, 4, 11]

# Remove the latest insert from the last and return the removed item
irb(main):311> x.pop(1)
=> [11]

# Join
irb(main):322> x.join
=> "85732101694"
irb(main):331> x.join("-")
=> "8-5-7-3-2-10-1-6-9-4"

# Split
irb(main):334> x.split("-")
=> [[8, 5, 7, 3, 2, 10, 1, 6, 9, 4]]
```

# How to check if an array is empty?
```
irb(main):256> x.empty?
=> false
```

# Check if an index contains the value
```
irb(main):258> x.include?(11)
=> true
```

# How to print all the elements of an array?
```
irb(main):539> z.each {|element| p element}
1
2
3
4
=> [1, 2, 3, 4]
```

# How to select only odd numbers from an array?
```
irb(main):352> p x
[8, 5, 7, 3, 2, 10, 1, 6, 9, 4]

Note: food is a random name to select the index object.
irb(main):356> x.select {|food| food.odd?}
=> [5, 7, 3, 1, 9]
```