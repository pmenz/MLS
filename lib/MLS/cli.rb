class MLS::Cli

  def call
    puts "--------------------------------"
    puts "Welcome to MLS Teams and Players!"
    puts "--------------------------------"
    puts "--------------------------------"
    start
  end

  def start
    puts " ."
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
    puts "Would you like to the roster of a team? (y/n)"
    input = gets.strip
    option(input)
  end

  def option(input)
    if input == "y"
      puts "select team number"
# user inputs number
      puts MLS::Team.roster_for_team_number("1")

      #get the roster
      #ask if want to see player information.
      #select player number
      #valid_input
      #print player_ifo
      #menu
    elsif input == "n"
      puts "menu option"
    else
      puts "wrong selection"
    end
  end

  def exit
    puts "Adios! Chio!"
    return
  end
end
