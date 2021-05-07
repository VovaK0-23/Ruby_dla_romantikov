def launch(params = {})
  angle = params[:angle] || 90
  astronauts = params[:astronauts] || %i[belka strelka]
  delay = params[:delay] || 5
  delay.downto(1) { |n| print n, '..'; sleep(1) }
  puts 'Пуск!'
  puts "Запустили #{astronauts}, под углом #{angle}"
end

launch
