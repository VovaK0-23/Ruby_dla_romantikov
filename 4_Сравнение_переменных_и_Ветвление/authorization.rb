puts 'Логин:'
login = gets.chomp
puts 'Пароль:'
password = gets.chomp
puts 'Доступ к банковской ячейке разрешен.' if password == '12345' && login == 'admin'
