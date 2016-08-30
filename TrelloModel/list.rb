require_relative 'card'

class List
  attr_accessor :list_name, :cards

  def initialize(list_name)
    @list_name = list_name
    @cards = []
  end

  def create_card(card_name)
    some_card = Card.new(card_name)
    @cards << some_card
  end


  def to_s
    string = "list name: #{@list_name}\n"
    string << "cards: #{@cards}\n"
  end

end