class Board
  attr_reader :boards, :board_users
  attr_accessor :board_title

  def initialize(board_name)
    @board_title = board_name
    @lists = []
    @board_users = ['default']
  end

  def create_list(list_name)
    list_name = List.new(list_name)
    @lists << list_name
  end

  def add_user(username)
    @board_users << username
  end
end