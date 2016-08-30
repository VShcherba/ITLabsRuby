require_relative 'comment'
class Card
  attr_reader :comments, :attachments
  attr_accessor :card_name

  def initialize(card_name)
    @card_name = card_name
    @comments = []
    @attachments = []
  end

  def add_comment(text, username)
    comment = Comment.new(text, username)
    @comments << comment
  end

  def add_attachment(attach)
    @attachments << attach
  end
end

