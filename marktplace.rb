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
    puts "Digite a quantidade desejada: "
    qtd = gets.chomp.to_i
    return products['Calça'] * qtd if select_clothe == 1
    return products['Camisa'] * qtd if select_clothe == 2
    return products['Tênis'] * qtd if select_clothe == 3
end

def list_products(products)
  products.each_with_index { |(produto, valor), index|
    puts "\n [#{index + 1}] - #{produto} ---- #{valor} R$"
  }
end

summarize = 0

def continue_buying
  puts "Digite 0 para voltar ao menu inicial: "
  digit = gets.chomp.to_i
  digit != 0 ? false : true
end

while true
    option_menu = menu
    value = select_option if option_menu == 1
    if option_menu == 2 
      puts "\nObrigado pela preferência, volte sempre! :)"
      break
    end
    summarize += value
    puts "Subtotal: #{summarize}"
    break unless continue_buying
end