class MyWebService
  def get_info(data)
    connect_and {get(data)}
  end

  def post_info(data)
    connect_and {post(data)}
  end

  def connect_and
    open_connection
    yield if block_given?
    close_connection
  end

  def post(data)
    puts "posting #{data}"
  end

  def close_connection
    puts 'connection closed'
  end

  def get(data)
    puts "getting #{data}"
  end

  def open_connection
    puts 'connection opened'
  end
end

service = MyWebService.new
service.get_info('user')
service.post_info('user')

ary = [1, 2, 3, 4, 5, 6, 10]
ary.each {|item| puts item}
new_ary = ary.map {|item| item + 1}
new_ary.each{ |item| puts item}

