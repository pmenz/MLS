class MLS::Cli

  def call
    puts "--------------------------------"
    puts "Welcome to MLS Teams and Players!"
    puts "--------------------------------"
    puts "--------------------------------"
    start
  end

  def start
    puts " "
    puts "What are you interested?"

    puts "1. Player "
    puts "2. Teams "
    puts "3. Exit"
    puts ""
    puts "--------------------------------"
    puts "option:"
    user_valid_input
  end

  def user_valid_input
    input = gets.strip.to_i
    if input == 1
      player_search
    elsif input == 2
      MLS::Team.get_clubs
      MLS::Team.parse_clubs
    puts "--------------------------------"
    puts "---------- MLS Teams -----------"
    puts "--------------------------------"
    puts "--------------------------------"
      MLS::Team.print_clubs
      team_menu
      elsif input == 3
        exit
    else
    puts "please select a valid option(1, 2 or 3)"
      user_valid_input
    end
  end

  def player_search
    puts "W.I.P"
  end

  def team_menu
  
    puts "would you like to know more about a player? Y/n"
    input = gets
  end

  def exit
    puts "Adios! Chio!"
    return
  end
end
