# 1.1 Is Unique:
#   Implement an algorithm to determine if a string has all unique characters.
#   What if you cannot use additional data structures?

# Solution 1 : Use the in built Set class. Set implements a collection of unordered values with no duplicates. 

require "set"

def is_unique(str)
	set = Set.new
	str.each_char do |c|
		return false if set.include?(c)
		set << c
	end
	return true
end

str = 'qywgeigqbwjeb123'
puts(is_unique(str)) # false
str = 'qwertymnbvcxz789012345'
puts(is_unique(str)) # true
