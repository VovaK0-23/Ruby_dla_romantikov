home_price = 500_000
time = 30
yearly_payment = home_price / time
total = 0
time.times do |i|
  year_interest = home_price * 0.04
  home_price -= yearly_payment
  total += year_interest
  puts "Year #{i + 1}, #{year_interest.round(2)}$ interest paid this year. Total interest = #{total.round(2)}"
end
