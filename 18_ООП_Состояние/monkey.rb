class Monkey
  attr_reader :state

  def initialize
    @state = %i[run stop].sample
  end

  def run
    @state = :run
  end

  def stop
    @state = :stop
  end
end

monkeys = []
10.times { monkeys << Monkey.new }
monkeys.each { |monkey| puts monkey.state }
