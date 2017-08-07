def display_list(array)

  puts

  puts "My giftlist:"

  array.each_with_index do |gift, index|

    check = gift[:bought] ? "X" : " "

    puts "#{index + 1} - #{gift[:name]} [#{check}]"

  end

  puts

end

