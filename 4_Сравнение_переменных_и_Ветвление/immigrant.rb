score = 0
puts 'У вас есть высшее образование? (y/n)'
score += 1 if gets.chomp == 'y'
puts 'У вас есть опыт работы программистом? (y/n)'
score += 1 if gets.chomp == 'y'
puts 'У вас более трех лет опыта? (y/n)'
score += 1 if gets.chomp == 'y'
puts 'Добро пожаловать в США' if score >= 2
