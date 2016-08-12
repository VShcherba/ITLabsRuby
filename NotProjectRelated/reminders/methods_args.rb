def simple_method
  puts 'I am simple'
end

def method_with_arg(arg)
  puts 'I am with arg'
  puts "arg is #{arg}"
end

def method_with_default_arg(arg=100)
  puts 'I am with default arg'
  puts "arg is #{arg}"
end

def method_with_several_args(arg1, arg2)
  puts "first arg is #{arg1}"
  puts "second arg is #{arg2}"
end

def method_with_named_args(arg1:, arg2:)
  puts "first arg is #{arg1}"
  puts "second arg is #{arg2}"
end

def method_takes_lot_of_args(a, b, *args)
  puts "a is #{a}"
  puts "b is #{b}"
  args.each do |arg|
    puts "arg is #{arg}"
  end
end

def method_takes_hash(a, b, *args, **hashes)
  method_takes_lot_of_args(a, b, args)
  hashes.each_pair do |key, value|
    puts "key is #{key}"
    puts "value is #{value}"
  end
end

def method_takes_simple_hash(options={})
  options.each_pair do |key, value|
    puts "key is #{key}"
    puts "value is #{value}"
  end
end

simple_method
method_with_arg('asdf')
method_with_default_arg
method_with_default_arg(300)
method_with_several_args('second2','first1')
method_with_named_args(arg2:'second2',arg1:'first1')

method_takes_lot_of_args('a', 'b', 'c', 'd', 1, 2, 3, 6)
method_takes_hash('a', 'b', 'c', 'd', 1, 2, 3, 6, var1:'var1', var2:'var2')

method_takes_simple_hash(var1:'var1', var2:'var2')

