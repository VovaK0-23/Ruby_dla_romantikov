class Robot
  attr_accessor :x, :y, :id

  def initialize(options = {})
    @x = options[:x] || 0
    @y = options[:y] || 0
    @id = options[:id] || 0
  end

  def right
    self.x += 1 if id.even?
  end

  def left
    self.x -= 1 if id.even?
  end

  def up
    self.y += 1 if id.odd?
  end

  def down
    self.y -= 1 if id.odd?
  end
end

class Commander
  def move(who)
    m = %i[right left up down].sample
    who.send(m)
  end
end

commander = Commander.new
arr = Array.new(10) { |i| Robot.new({ id: i }) }

loop do
  puts "\e[H\e[2J"
  (12).downto(-12) do |y|
    (-30).upto(30) do |x|
      found = arr.any? { |robot| robot.x == x && robot.y == y }
      if found
        print '*'
      else
        print '.'
      end
    end
    puts
  end

  arr.each do |robot|
    commander.move(robot)
  end

  sleep 0.5
end
