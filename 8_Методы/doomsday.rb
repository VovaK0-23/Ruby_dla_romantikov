@humans = 10
@machines = 10
def luck?
  rand(0..1) == 1
end

def boom
  diff = rand(1..5)
  if luck?
    @diff_machines = diff
    @machines -= diff
    puts "#{diff} машин уничтожено"
  else
    @diff_humans = diff
    @humans -= diff
    puts "#{diff} людей погибло"
  end
end

def born
  if luck?
    @machines += @diff_machines
    puts "#{@diff_machines} машин создано"
  else
    @humans += @diff_humans
    puts "#{@diff_humans} людей рождено"
  end
end

def random_city
  dice = rand(1..5)
  if dice == 1
    'Москва'
  elsif dice == 2
    'Лос-Анджелес'
  elsif dice == 3
    'Пекин'
  elsif dice == 4
    'Лондон'
  else
    'Сеул'
  end
end

def random_sleep
  sleep rand(0.3..1.5)
end

def stats
  puts "Осталось #{@humans} людей и #{@machines} машин"
end

def event1
  puts "Запущена ракета по городу #{random_city}"
  random_sleep
  boom
  born
end

def event2
  puts "Применено радиоактивное оружие в городе #{random_city}"
  random_sleep
  boom
  born
end

def event3
  puts "Группа солдат прорывает оборону противника в городе #{random_city}"
  random_sleep
  boom
  born
end

def check_victory?
  true if @machines == 0 || @humans == 0
end

loop do
  if check_victory?
    if @machines == 0
      puts 'Люди победили!'
    elsif @humans == 0
      puts 'Машины победили!'
    end
    exit
  end
  dice = rand(1..3)
  case dice
  when 1
    event1
  when 2
    event2
  when 3
    event3
  end

  stats
  random_sleep
end
