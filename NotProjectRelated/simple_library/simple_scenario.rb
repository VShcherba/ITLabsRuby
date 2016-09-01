require_relative 'student'
require_relative 'book'
require_relative 'library'

# create two simple students
first_student = Student.new
second_student = Student.new

# generate a list of books
books = Book.generate_n_books(10)

# create an empty library
library = Library.new

# add books to library
library.add_books(books)

# register students in a library
library.register_student(first_student)
library.register_student(second_student)

# search a book by title in a library
title = books.map(&:title).sample
book = library.get_book_by_title(title)

# borrow a book to a student
library.give_book_to_student(book, first_student)

# get list of library books
library_books = library.books
puts library_books

# get list of students registered
library_students = library.students
puts library_students

# get list of library books borrowed
borrowed_books = library.borrowed_books
borrowed_books.each do |b_book|
  puts "book : #{b_book[:book].title}"
  puts "student: #{b_book[:student].name}"
  puts '========================='
end