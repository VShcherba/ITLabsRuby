require_relative 'user'
require_relative 'board'
require_relative 'list'
require_relative 'card'
require_relative 'comment'



# move card from first to second list
# Add few comments to card

# Show second list of cards


# register 2 users
firstuser = User.new('Vladyslav', 123)
second_user = User.new('Konstantin', 12345)


# create a board
test_board = Board.new('Testing trello', 123)

# create 2 lists
test_board.create_list('To Do')
test_board.create_list('In Progress')


# create 2 card in first list


# list cards of In Progress list



# invite user to join board
test_board.add_user(firstuser)
test_board.add_user(second_user)

puts test_board.board_users

# Add few comments to card

test_card = Card.new("first task")

test_card.add_comment('Random text', firstuser)
test_card.add_comment('hey dude', second_user)

# Show all comments of the card
puts test_card.comments

# Add attachment to one card
test_card.add_attachment(['some','staff'])
puts test_card.attachments