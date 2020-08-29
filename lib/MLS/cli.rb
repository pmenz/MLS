class MLS::Cli

  def call
    puts "--------------------------------"
    puts "Welcome to MLS Teams and Players"
    puts "-------------CLI----------------"
    puts "--------------------------------"
    start
  end

  def start
    puts ""
    puts "What are you interested in?"
    puts ""
    puts "1. Player "
    puts "2. Teams "
    puts "3. Exit"
    puts ""
    spacer
    user_valid_input
  end

  def user_valid_input
    puts "Please select an option:"
    input = gets.strip.to_i
    if input == 1
      player_search
    elsif input == 2
      MLS::Team.get_clubs
      MLS::Team.parse_clubs
    puts "--------------------------------"
    puts "---------- MLS Teams -----------"
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
    spacer
    puts "W.I.P"
    start
  end

  def team_menu
    spacer
    puts "Would you like to see the roster"
    puts "of a team? (y/n)"
    puts "Option:"
    input = gets.strip
    option(input)
  end

  def option(input)
    if input == "y"
      spacer
      puts "Select team number"
      puts "number?:"
      input_number = gets.strip
      puts "--------------------------------"
      puts "------ Roster MLS Teasm --------"
      puts "--------------------------------"
      puts MLS::Team.roster_for_team_number(input_number)
      spacer
      puts "What are you interested now?"
      puts "1. Player "
      puts "2. Teams "
      puts "3. Exit"
      user_valid_input
    elsif input == "n"
      spacer
      puts "What are you interested now?"
      puts "1. Player "
      puts "2. Teams "
      puts "3. Exit"
      spacer
      puts "option:"
      user_valid_input
    else
      puts "wrong selection"
      puts "Please select a correct option (y/n)"
      input = gets.strip
      option(input)
    end
  end

  def exit
    puts "Goodbye!"
    return
  end

  def spacer
    puts "--------------------------------"
    puts "--------------------------------"
  end


end
