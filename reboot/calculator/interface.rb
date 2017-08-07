#ask a number
#store it nin a variable
#ask user a second number
#store it in a variable
# compute the sum of the 2 numbers
#display the results.

require_relative 'calculator.rb'
answer = "ON"
until answer == "OFF"

puts "Enter a first number"
first_number = gets.chomp.to_f

puts "Which operation [+][-][x][/]"
operator = gets.chomp

puts "Enter a second number"
second_number = gets.chomp.to_f



result = calculator(first_number, second_number, operator)

puts "the result is #{result}"
puts "AC / OFF"

answer = gets.chomp
end

puts "Goodbye"
