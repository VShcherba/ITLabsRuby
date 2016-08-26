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
end

