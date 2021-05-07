print '(R)ock, (S)cissors, (P)aper?'
human = gets.strip.capitalize
arr = %i[rock scissors paper]
case human
when 'R' then human = arr[0]
when 'S' then human = arr[1]
when 'P' then human = arr[2]
end

bot = arr.sample
if bot == human
  print 'DRAW'
elsif bot == :rock && human == :paper
  print 'You win!'
elsif bot == :scissors && human == :rock
  print 'You win!'
elsif bot == :paper && human == :scissors
  print 'You win!'
else
  print 'You lose'
end
