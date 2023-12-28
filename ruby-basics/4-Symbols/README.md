# Symbols
Ruby symbols are lightweight, immutable strings that are used as identifiers. They are similar to strings but have some key differences, such as being faster (as Ruby compares symbols by their unique internal IDs rather than their content) and more memory-efficient. Symbols are created using a colon (:) followed by the identifier's name. 

## Syntax
```
:symbol
```

## Create a dictionary with symbol
```
irb(main):379> y = { a: 1, b: 2} 
=> {:a=>1, :b=>2}
```