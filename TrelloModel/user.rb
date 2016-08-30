require_relative 'board'

class User
  attr_reader :username, :boards

  def initialize(username, password)
    @username = username
    @password = password
    @boards = []

  end

  def create_new_board(new_name, board_id)
    new_board_name = Board.new(new_name, board_id)
    @boards << new_board_name
  end

  def to_s
    string = "#{username}"
  end


end
