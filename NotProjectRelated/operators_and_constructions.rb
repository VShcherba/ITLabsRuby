=begin
1. Create method which gets 10 random integers (from 0 to 9) (generate it using while or until)

before output for each next number we should puts "========="
                if number is even or odd it should puts string "the number is even" or "the number is odd"
                  if it's more (or less) than 5 it should puts appropriate string "the number is more (or less) than 5"
in case we've got "0" we should puts "we've got 0"
                  in each case we should get 2 messages except the '0' case

=end
i = 0
while i < 10
  i +=1
  num = rand(9)
  puts num
  if num == 0
    puts "we've got 0"
  elsif num.odd?
    puts 'the number is odd'
  elsif num.even?
    puts 'the number is even'
  end


  if  num < 5 and num > 0
    puts 'the number is less than 5'
  elsif num > 5
    puts 'the number is more than 5'
  elsif num == 5
    puts "that's five"
  end
  puts '========='
end
