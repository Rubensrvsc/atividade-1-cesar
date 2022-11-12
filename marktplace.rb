
def menu
    puts "[ 1 ] Comprar"
    puts "[ 2 ] Sair"
    option = gets.chomp.to_i
end

def select_option
    products = {
        'Calça' => 350.0,
        'Camisa' => 200.0,
        'Tênis' => 650.0
    }

    return products['Calça'] if select_clothe == 1
    return products['Camisa'] if select_clothe == 2
    return products['Tênis'] if select_clothe == 3
end

summarize = 0

while true
    option_menu = menu
    value = select_option if option_menu == 1
    break if option_menu == 2
    summarize += value
end