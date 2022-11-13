def menu
  puts 'digite a operação a ser realizada: '
  puts '[1] - Comprar'
  puts '[2] - Sair'
  option = gets.chomp.to_i
end

def select_option
  products = {
    'Calça' => 350.0,
    'Camisa' => 200.0,
    'Tênis' => 650.0
  }
  list_products(products)
  select_clothe = gets.chomp.to_i
  return products['Calça'] if select_clothe == 1
  return products['Camisa'] if select_clothe == 2
  return products['Tênis'] if select_clothe == 3
end

def list_products(products)
  products.each do |produto, valor|
    puts "\n [#{products.key(produto)}] - #{produto} ---- #{valor} R$"
  end
end

summarize = 0

loop do
  option_menu = menu
  value = select_option if option_menu == 1
  if option_menu == 2
    puts "\nObrigado pela preferência, volte sempre! :)"
    break
  end
  puts "\n Subtotal #{summarize += value} R$ "
  puts "\n Digite 0 para voltar ao Menu Inicial"
  callback = gets.chomp.to_i
    break unless callback ==0
end