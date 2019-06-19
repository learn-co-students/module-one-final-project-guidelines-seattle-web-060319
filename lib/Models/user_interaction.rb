require_relative '../../config/environment'


class UserInteraction

  attr_accessor :user, :portfolio

  def run
    puts "Welcome to Stock_App_Name!"
    get_input
  end

  def get_input
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
      while pin_input = STDIN.gets.chomp
        returning = User.all.find_by(pin: pin_input)
        if !returning || pin_input != Integer(pin_input)
          puts "Please enter valid pin or create an account."
          puts
          puts prompt
      else
        puts "Welcome back, #{returning.name}!"
        #put next menu here
        end
      end

    else selection == 2
      puts "What's your name?"
      user_name = STDIN.gets.chomp
      puts "Please enter a 4 digit pin:"
      # new_pin = STDIN.gets.chomp
      while new_pin = STDIN.gets.chomp
        if new_pin.is_a? Integer
          @user = User.create(name: user_name, pin: new_pin)
          puts "Welcome #{@user.name}!"
        else
          puts "Please enter a valid pin:"
          new_pin = STDIN.gets.chomp
        end
      end
    end
  end

end
