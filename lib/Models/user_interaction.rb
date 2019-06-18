require_relative '../config/environment'

class UserInteraction

  attr_accessor :user, :portfolio

  def run
    puts "Welcome to Stock_App_Name"
  end

  def gets_input
    puts "Please enter your name:"
    name = gets.chomp
    
  end


end
