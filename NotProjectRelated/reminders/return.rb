class TryReturn
  def some_method(arg)
    puts 'I am working'
    return 'it is string' if arg.is_a? String
    puts 'return working'
  end
end

try = TryReturn.new

puts try.some_method('123')