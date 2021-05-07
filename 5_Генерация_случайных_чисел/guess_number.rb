number = rand(1..1_000_000)
print 'Привет! Я загадал число от 1 до 1,000,000, попробуйте угадать: '
loop do
  input = gets.to_i
  if input == number
    puts 'Правильно!'
    exit
  elsif input > number
    print 'Искомое число меньше вашего ответа'
  else
    print 'Искомое число больше вашего ответа'
  end
end
