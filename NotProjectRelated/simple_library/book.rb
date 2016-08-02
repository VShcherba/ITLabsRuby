require 'faker'
class Book

  attr_reader :title
  def initialize
    @title = Faker::Book.title
    @author = Faker::Book.author
    @genre = Faker::Book.genre
  end

  def to_s
    string = "book title : #{@title}\n"
    string << "book author: #{@author}\n"
    string << "book genre : #{@genre}\n"
    string << "========================\n"
    string
  end

  def self.generate_n_books(n)
    books = []
    n.times do
      books << self.new
    end
    books
  end
end