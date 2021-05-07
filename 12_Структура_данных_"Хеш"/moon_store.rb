items = {
  soccer_ball: { weight: 410, amount: 0 },
  tennis_ball: { weight: 58, amount: 0 },
  golf_ball: { weight: 45, amount: 0 }
}
puts 'Amount of soccer balls:'
items[:soccer_ball][:amount] = gets.chomp.to_i
puts 'Amount of tennis balls:'
items[:tennis_ball][:amount] = gets.chomp.to_i
puts 'Amount of golf balls:'
items[:golf_ball][:amount] = gets.chomp.to_i

moon_items = items
items.each { |key, value| moon_items[key][:weight] = (value[:weight].to_f / 6).round(2) }

moon_total = 0
moon_items.each do |_key, value|
  moon_total = value[:weight] * value[:amount] + moon_total
end

puts "#{moon_total} - weight of all items on moon"
puts "#{moon_total * 6} - weight of all items on earth"
