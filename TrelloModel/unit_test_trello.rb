

# invite user to join board


# move card from first to second list
# Add few comments to card
# Add attachment to one card
# Show second list of cards
# Show all comments of the card

require_relative 'user'
require_relative 'board'
require_relative 'list'
require_relative 'card'
require_relative 'comment'

# register 2 users
first_user = User.new
second_user = User.new


# create a board
test_board = Board.new

# create 3 lists
first_list = Board.new_list
second_list = Board.new_list
third_list = Board.new_list


# create 2 card in first list

first_card = List.create_card
second_card = List.create_card



# Add few comments to card

