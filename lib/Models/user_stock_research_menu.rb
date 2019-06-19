def user_stock_research_menu
    system('clear')
    while true
        puts 'Please enter stock symbol or stock name to lookup or type "back" to go back'
        input = gets.chomp
        if valid_symbol?(input)
            user_stock_profile_menu(input)
        elsif input == "back"
            break
        else
            recommendations = StockByName(input)
            if recommendations.length == 0
                system('clear')
                puts 'Sorry no match for that search. Try a different search term.'
            else
                system('clear')
                puts 'Did you mean any of these stocks?'
                puts
                recommendations.each do |stock|
                    puts "Name: " + "#{stock[1]}".green + " Symbol: " + "#{stock[0]}".blue
                    puts
                end
            end 
        end
    end
end
