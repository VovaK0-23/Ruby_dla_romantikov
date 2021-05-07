def friends_are_also_coming?
  [true, false].sample
end

def is_it_raining?
  [true, false].sample
end

def go_party
  puts 'Go party!'
end

def stay_home
  puts 'Stay home=)'
end
x = friends_are_also_coming?
x ? go_party : stay_home
y = !is_it_raining?
x && y ? go_party : stay_home
