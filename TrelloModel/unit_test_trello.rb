

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
firstuser = User.new('Vladyslav', 123)
second_user = User.new('Konstantin', 12345)


# create a board
test_board = Board.new

# create 3 lists
first_list = Board.new_list
second_list = Board.new_list
third_list = Board.new_list


# create 2 card in first list

to_do_list = List.new('Stuff to be done')
puts to_do_list.list_name
in_progress.create_card('In progress')
to_do_list.create_card('another awesome card')

print to_do_list.cards




# Add few comments to card

