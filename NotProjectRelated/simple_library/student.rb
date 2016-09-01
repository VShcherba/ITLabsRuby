require 'faker'
class Student

  attr_reader :name
  def initialize
    @first_name = Faker::Name.first_name
    @last_name = Faker::Name.last_name
    @email = Faker::Internet.email(@first_name + @last_name)
    @name = @first_name + ' ' + @last_name
  end

  def to_s
    string = "first name : #{@first_name}\n"
    string << "last name  : #{@last_name}\n"
    string << "email      : #{@email}\n"
    string << "=======================\n"
    string
  end
end