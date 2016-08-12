hash = {}

hash = Hash.new

not_empty = {'key' => 'value'}

not_empty = {:key => 'value'}

not_empty = {key:'value'}

puts not_empty[:key]

puts not_empty.key('value')

puts not_empty.has_key?(:something)

not_empty[:other_key] = 'other value'

puts not_empty.keys

not_empty.each_key do |key|
  puts key
end

not_empty.each_pair do |key, value|
  puts "key is #{key}"
  puts "value is #{value}"
end