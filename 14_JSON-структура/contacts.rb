contacts = {
  'leo' => {
    email: 'leo@exampl.com',
    cell_phone: '+47566444666',
    work_phone: '+380854564879'
  }
}

print 'Введите имя: '
input = gets.chomp
if contacts.key?(input)
  puts "Email: #{contacts[input][:email]}"
  puts "Cell phone: #{contacts[input][:cell_phone]}"
  puts "Work phone: #{contacts[input][:work_phone]}"
else
  puts 'Этого имени нету среди ваших контактов'
end
