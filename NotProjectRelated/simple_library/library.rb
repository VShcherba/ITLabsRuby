require 'faker'
class Library

  attr_reader :books, :students, :borrowed_books
  def initialize
    @title = Faker::Company.name
    @university = Faker::University.name
    @address = Faker::Address.street_address + '\n' + Faker::Address.street_name + '\n' + Faker::Address.city
    @books = []
    @students = []
    @borrowed_books = []
  end

  def add_books(books)
    books.each {|book| add_book(book)}
  end
  
  def add_book(book)
    @books << book
  end

  def register_student(student)
    @students << student
  end

  def get_book_by_title(title)
    @books.find {|book| book.title == title}
  end

  def give_book_to_student(book, student)
    borrowed_book = {}
    borrowed_book[:student] = student
    borrowed_book[:book] = book
    @books.delete(book)
    @borrowed_books << borrowed_book
  end
end