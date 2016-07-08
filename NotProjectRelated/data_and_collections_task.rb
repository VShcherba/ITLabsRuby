#Task 1
#  Create a method which will take a natural number as an argument and will find a sum of all its digits

def sumarize_digits(digit)
  sum = 0
  digit.to_s.each_char {|x| sum = sum + x.to_i}
  puts sum
end

#Task 2
#2. There is a string. Find a maximum number of digits placed in a row in it
def max_number_of_digits(string)
  string.length
end

#Task 3
#3. There is a string. Find a maximal number (not a digit) in it
def max_number(string)
  count = string.length
  number = ''
  count.times {number = number + 9.to_s}
  number.to_i
  print number
end

#Task 4
=begin
There are two strings. Find number of first chars from first string matching first chars of the second string. Consider two cases:
strings are definitely different
strings can completely match
=end
string1 = 'this is first string'
string2 = 'this is second string'
string1.split(' ')
string2.split(' ')


#Task 5
#5. There is an array of integers. First puts elements with even indexes and then with odd indexes

#Task 6
#6. There is an array of integers (ary). Puts the index of the last element where ary[0]<ary[i]<ary[-1]

#Task 7
#7. There is an array of integers (ary). Modify it with adding ary[0] (first element of the array) to each even number. Don't do it for first and last elements

#Task 8
#8. There is a hash where keys and values are strings. Modify it: all keys should be symbols and all values should be integers. If you couldn't modify some value set it to nil

#Task 9
#9. There is a hash where keys are symbols and values are integers. Modify it: remove all pairs where symbols start with "s" character

#Task 10
#10. There is a hash where keys are symbols and values are integers. Modify it: leave only pairs where value is natural number and more than 0
