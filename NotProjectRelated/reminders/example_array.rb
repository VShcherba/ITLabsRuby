empty_array = []

one_more = Array.new

not_empty = ['first element', 'b', 'c', 'd', 1, 2,3,4,5, 'last element']

puts not_empty[0]
puts not_empty.first

puts not_empty[-1]
puts not_empty.last

puts not_empty.include? 2

puts not_empty

not_empty << 'one more element'

puts not_empty

puts not_empty.empty?

not_empty = ['a', 'b', 'c', 'd']

not_empty.each do |element|
  puts element
end

new_ary = not_empty.map do |element|
  element.capitalize
end


puts new_ary