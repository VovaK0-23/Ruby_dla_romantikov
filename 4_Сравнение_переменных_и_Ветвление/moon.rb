puts 'Ширина участка в метрах:'
width = gets.chomp.to_i
puts 'Длина участка в метрах:'
length = gets.chomp.to_i
area = width * length
if area < 50
  puts 'Стоимость участка: 1000$'
elsif area > 50 && area < 100
  puts 'Стоимость участка: 1500$'
else
  price = area * 25
  puts "Стоимость участка: #{price}$"
end
