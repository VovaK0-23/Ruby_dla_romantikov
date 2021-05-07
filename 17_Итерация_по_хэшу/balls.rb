data = {
  soccer_ball: { name: 'Футбольный мяч', weight: 410, qty: 5 },
  tennis_ball: { name: 'Мяч для тенниса', weight: 58, qty: 10 },
  golf_ball: { name: 'Мяч для гольфа', weight: 45, qty: 15 }
}

puts 'На складе есть:'
data.each do |_, v|
  puts "#{v[:name]}, вес #{v[:weight]} грамм, количество: #{v[:qty]}"
end
