# XXX/ Этот код необходим только при использовании русских букв на Windows
if (Gem.win_platform?)
  Encoding.default_external = Encoding.find(Encoding.locale_charmap)
  Encoding.default_internal = __ENCODING__

  [STDIN, STDOUT].each do |io|
    io.set_encoding(Encoding.default_external, Encoding.default_internal)
  end
end
# /XXX

require_relative 'lib/clothes'

path_to_data = "./data"
# Для выхода из цикла набрать "111"
loop do
  puts "Для выхода из цикла набрать \"111\""
  print "Сейчас градусов на улице: "
  user_input = STDIN.gets.to_i
  # Создаем экземпляр класса "Clothes"
  cloth = Clothes.new(user_input, path_to_data)
  puts "\n\nГрадусов за окном: #{user_input} Предлагаю надеть:\n\n"
  puts "Головной убор: #{cloth.hats.sample}"
  puts "Одежда: #{cloth.jackets.sample}"
  puts "Обувь: #{cloth.shooses.sample}"
  puts
  break if user_input == 111
end
