def show_wait_cursor(seconds, fps = 10)
  chars = %w[| / - \\]
  delay = 1.0 / fps
  (seconds * fps).round.times do |i|
    print chars[i % chars.length]
    sleep delay
    print "\b"
  end
end

show_wait_cursor(3, 25)
