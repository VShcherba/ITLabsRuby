require_relative 'board'

class User
  attr_accessor :registered_users, :username

  @@registered_users = []
  def initialize(username, password)
    @username = username
    @password = password
  end

  def create_new_board(new_name)
    new_name = Board.new(new_name)
    new_name.add_user(@username)
  end
end

vlad = User.new('Vlad',123)
test_board = vlad.create_new_board('test_board')
puts test_board.board_title
puts test_board.board_users


