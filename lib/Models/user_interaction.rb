require_relative '../../config/environment'

class UserInteraction

  attr_accessor :user, :portfolio

  def run
    puts "Welcome to Stock_App_Name"
    gets_input
  end

  def gets_input
    prompt = "Type 1) to enter your pin or type or 2) to create a new account."
    puts
    puts prompt
    selection = gets.chomp.to_i
    if selection == 1
      puts "Please enter your pin:"
      while pin = gets.chomp.to_i
        case pin
        when @user.pin == pin
          puts "Welcome back, #{@user.name}!"
          break
        when @user.pin != pin
          puts "Incorrect pin."
          break
        else
          puts "Please enter valid pin or create an account."
          puts
          puts prompt
        end
      end
    else selection == 2
      puts "What's your name?"
      user_name = gets.chomp
      puts "Please enter a 4 digit pin:"
      new_pin = gets.chomp.to_i
      @user = User.create(name: user_name, pin: new_pin)
      puts "Welcome #{@user.name}!"
    end
  end


end
