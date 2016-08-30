require_relative 'list'

class Board
  attr_reader :board_users, :lists
  attr_accessor :board_title

  def initialize(board_name, board_id)
    @board_title = board_name
    @board_id = board_id
    @lists = []
    @board_users = []
  end

  def create_list(list_name)
    list_name = List.new(list_name)
    @lists << list_name
  end

  def add_user(username)
    @board_users << username
  end

  def to_s
    string = "board title: #{@board_title}\n"
    string << "board lists: #{@lists}\n"
  end
end