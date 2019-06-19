require_relative '../../config/environment'

  def show_menu
    prompt = "Select an option from the list below:
            1) Look at my portfolio.
            2) Search stocks by name.
            3) See trending stocks.
            4) Exit."
    puts prompt

    selection = STDIN.gets.chomp.to_i

    while selection != 1 && selection != 2 && selection != 3 && selection != 4
      puts "Please select a valid option."
      puts
      StockMenuOption.menu_options
      selection = STDIN.gets.chomp.to_i
    end

    if selection == 1
      binding.pry
      #link to user portfolio
    elsif selection == 2
      #see trending stocks
    elsif selection == 3
      #search stocks by name
    elsif selection == 4
      #exit back to main menu
    end
  end

  def user_portfolio
  end

  def trending
  end

  def search
  end

  def exit
  end
