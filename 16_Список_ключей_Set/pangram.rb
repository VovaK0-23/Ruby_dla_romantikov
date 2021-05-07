require 'set'
def f(str)
  set = Set.new
  str.each_char do |c|
    set.add(c) if c >= 'a' && c <= 'z' && set.size != 26
  end
  set.size == 26
end
puts f('quick brown fox jumps over the lazy dogqqqqqq')
