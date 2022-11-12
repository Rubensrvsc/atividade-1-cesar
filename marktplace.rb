
summarize = 0

def menu
    puts "[ 1 ] Comprar"
    puts "[ 2 ] Sair"
    option = gets.chomp.to_i
end

def select_option(option)
    products = {
        'Calça' => 350.0,
        'Camisa' => 200.0,
        'Tênis' => 650.0
    }

    return products['Calça'] if option == 1
    return products['Camisa'] if option == 2
    return products['Camisa'] if option == 3
end

while true
    option_menu = menu
    select_option(option_menu) if option_menu == 1
    break if option_menu == 2
end