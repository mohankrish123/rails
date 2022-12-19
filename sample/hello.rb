#!/usr/bin/ruby

class Sample
    def initialize(name)
        @Name = name
    end
    def test
        puts "My name is #@Name"
    end
    def Sample.test2
        puts "Testing"
    end
end

object = Sample.new("Mohan")
object.test

