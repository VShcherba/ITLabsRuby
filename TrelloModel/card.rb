class Card
  attr_accessor :card_name

  def initialize(card_name)
    @card_name = card_name
    @comments = []

  end
end