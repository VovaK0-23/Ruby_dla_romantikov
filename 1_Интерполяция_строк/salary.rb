puts 'Your month salary?'
monthly_salary = gets.chomp.to_i
year_salary = monthly_salary * 12
puts "Your year salary is #{year_salary}."
deferred = year_salary.to_f * 0.15
puts "#{deferred}$ deferred for a year"
puts "#{deferred * 5}$ deferred for 5 years"
