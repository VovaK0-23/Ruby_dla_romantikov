@hash = {
  name: 'Герман Оскарович Блокчейн',
  balance: 123.45,
  transactions: [{
    text: 'Сапоги',
    type: :expense,
    sum: 40
  }, {
    text: 'Зарплата',
    type: :income,
    sum: 1000
  }, {
    text: 'Продажа ваучера',
    type: :income,
    sum: 300
  }],
  visibility_filter: :show_all
}

def show_all?
  @hash[:visibility_filter] == :show_all
end

puts "Клиент: #{@hash[:name]}"
puts "Баланс: #{@hash[:balance]}"
puts "Отображать пополнение:  #{show_all?}"
puts 'Описание    Тип   Сумма'
@hash[:transactions].each do |item|
  if show_all?
    if item[:type] == :income
      type = 'приход'
    elsif item[:type] == :expense
      type = 'расход'
    end
    print "#{item[:text]}  #{type}  #{item[:sum]}\n"
  elsif item[:type] == :expense
    type = 'расход'
    print "#{item[:text]}  #{type}  #{item[:sum]}\n"
  end
end
