# Horse Race

# Pseudo-code:

# 1. Print welcome

# 2. Get horses

horses = ["Tempête", "Tornado Mélenchon", "Reactor 5000", "Brocéliande du Poitou", "Bouboule"]

# 3. Get user's bet
#display horse list

horses.each_with_index do |horse, index|
  puts "#{index + 1} -#{horse}"
end

#   ask user for a horse
puts "What is your bet?"
print">"
index = gets.chomp.to_i - 1

#   store it in a variable
puts bet = horses[index]
puts "Your bet is #{bet}"


# 4. Run the race
#   loop on 4 laps
shuffle_horses = []
4.times do |lap|
  puts "lap #{lap + 1}:"

#     shuffle horses array
shuffle_horses = horses.shuffle

#     iterate on horses
shuffle_horses.each_with_index do |horses, index|
  puts "#{index +1} - #{horses}"
end
end


#       display position and name
winner = shuffle_horses.first
puts "the winner is #{winner}"


# 5. Print results


#   display first horse

#   check if users' bet matches winner

