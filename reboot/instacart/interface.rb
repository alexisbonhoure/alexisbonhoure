# # Instacart
require_relative 'instacart.rb'
# 1. Print Welcome
puts "--------------------"
puts "Welcome to Instacart"
puts "--------------------"
puts

store = {
  "kiwi" => {price: 1,25, stock: 5 }
  "banana" => {price: 0.5, stock: 4 }
  "mango" => {price: 4, stock: 1 }
  "asparagus" => {price: 9, stock: 5 }
}

puts "Available today:"
store.each do |product, infos|
  puts "#{product}: #{price}€"
end
cart = {} # HASH
item = ""
until item == "quit"
  item = ask_for_item
  if item != 'quit' && store.include?(item) && !cart.include?(item)
    quantity = ask_for_quantity
    cart[item] = quantity
  elsif item == "quit"
  elsif !store.include?(item)
    puts "Product is not available"
  elsif cart.include?(item)
    quantity = ask_for_quantity
    cart[item] += quantity
  end
end
# 4. Print the bill (checkout)
#   iterate through cart
puts "-------BILL---------"
checkout = compute_bill(cart, store)
puts "TOTAL: #{checkout}€"
puts "--------------------"
