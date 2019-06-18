require_relative '../config/environment'

class UserInteraction

  attr_accessor :user, :portfolio

  def run
    puts "Welcome to Stock_App_Name"
  end

  def gets_input
    prompt = "Type 1) to enter your pin or type or 2) to create a new account."
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
          puts prompt
        end

  end




end
