class TryPrivate
  def simple_method
    puts 'I am public'
    puts 'and'
    private_method
  end

  private
  def private_method
    puts 'I am private'
  end

end

try = TryPrivate.new

try.simple_method

