class Login

  def run
    system('clear')
    get_input
    show_menu
  end




################ Welcome Screen ##################################################

  def welcome
    puts "Welcome to NYSE Watch!"
  end

  def get_input
    welcome
    prompt = "Type 1) to enter your pin or type or 2) to create a new account."
    puts
    puts prompt
    selection = STDIN.gets.chomp.to_i

    while selection != 1 && selection != 2
      puts "Please select an option from the main menu:"
      puts prompt
      selection = STDIN.gets.chomp.to_i
    end
    if selection == 1
      puts "Please enter your pin:"
      while pin_input = STDIN.gets.chomp.to_i
        returning = User.all.find_by(pin: pin_input)
        if !returning || pin_input != Integer(pin_input)
          binding.pry
          puts "Please enter valid pin or create an account."
          puts
          puts prompt
      else
        puts "Welcome back, #{returning.name}!"
        # self.show_menu
        #put next menu here
        end
      end

    else selection == 2
      puts "What's your name?"
      user_name = STDIN.gets.chomp
      puts "Please enter a 4 digit pin:"
      while new_pin = STDIN.gets.chomp.to_i
        if new_pin.is_a? Integer
          @user = User.create(name: user_name, pin: new_pin)
          returning = User.all.find_by(pin: new_pin)
          puts "Welcome #{returning.name}!"
          #menu here
        else
          puts "Please enter a valid pin:"
          new_pin = STDIN.gets.chomp
        end
      end
    end
  end

################################# Stock Options Menu #########################################

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

    #link to user portfolio
  elsif selection == 2
    #see trending stocks
  elsif selection == 3
    #search stocks by name
  elsif selection == 4
    #exit back to main menu
  end
end



end
