@arr1 = Array.new(10, '🤖')
@arr2 = Array.new(10, '🤖')

def attack(arr)
  sleep 1
  i = rand(0..9)
  if arr[i] == '🤖'
    arr[i] = '💀'
    puts "Робот по индексу #{i} уничтожен"
  else
    puts "Промазали по индексу #{i}"
  end
  sleep 1
end

def victory?
  robots_left1 = @arr1.count { |x| x == '🤖' }
  robots_left2 = @arr2.count { |x| x == '🤖' }
  if robots_left1 == 0
    puts "Команда 2 победила, в команде осталось #{robots_left2} роботов"
    return true
  end
  if robots_left2 == 0
    puts "Команда 1 победила, в команде осталось #{robots_left1} роботов"
    return true
  end
  false
end

def stats
  cnt1 = @arr1.count { |x| x == '🤖' }
  cnt2 = @arr2.count { |x| x == '🤖' }
  puts "1-ая команда: #{cnt1} роботов в строю"
  puts @arr1.join(' ')
  puts "2-ая команда: #{cnt2} роботов в строю"
  puts @arr2.join(' ')
end

loop do
  puts 'Первая команда наносит удар...'
  attack(@arr2)
  exit if victory?
  stats
  sleep 3
  puts
  puts 'Вторая команда наносит удар...'
  attack(@arr1)
  exit if victory?
  stats
  sleep 3
  puts
end
