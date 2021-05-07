class Robot
  attr_accessor :x, :y

  def initialize(options = {})
    @x = options[:x] || 0
    @y = options[:y] || 0
  end

  def right
    self.x += 1
  end

  def left
    self.x -= 1
  end

  def up
    self.y += 1
  end

  def down
    self.y -= 1
  end

  def label
    '*'
  end
end

class Dog
  attr_accessor :x, :y

  def initialize(options = {})
    @x = options[:x] || 0
    @y = options[:y] || 0
  end

  def right
    self.x += 1
  end

  def left; end

  def up; end

  def down
    self.y -= 1
  end

  def label
    '@'
  end
end

class Commander
  def move(who)
    m = %i[right left up down].sample
    who.send(m)
  end
end
commander = Commander.new
arr = Array.new(10) { Robot.new }
3.times { arr.push(Dog.new(x: -12, y: 12)) }
loop do
  puts "\e[H\e[2J"
  (12).downto(-12) do |y|
    (-12).upto(12) do |x|
      somebody = arr.find { |somebody| somebody.x == x && somebody.y == y }
      if somebody
        print somebody.label
      else
        print '.'
      end
    end
    puts
  end
  game_over = arr.combination(2).any? do |a, b|
    a.x == b.x && \
      a.y == b.y && \
      a.label != b.label
  end
  if game_over
    puts 'Game over'
    exit
  end
  win = arr.any? { |dog| dog.label == '@' && (dog.x == 12 || dog.y == -12) }
  if win
    puts 'WIN'
    exit
  end
  arr.each do |somebody|
    commander.move(somebody)
  end
  sleep 0.5
end
