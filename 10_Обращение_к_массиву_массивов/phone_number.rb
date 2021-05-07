def phone_to_number(phone)
  arr = [
    %w[A B C],
    %w[D E F],
    %w[G H I],
    %w[J K L],
    %w[M N O],
    %w[P Q R S],
    %w[T U V],
    %w[W Y Z X]
  ]
  result_arr = []
  phone.chars.each do |char|
    if /\d/.match(char)
      result_arr << char
    else
      arr.each_with_index do |row, index|
        next unless row.include?(char)

        char = index + 2
        result_arr << char
      end
    end
  end
  result_arr.join
end

p phone_to_number('555MATRESS')
