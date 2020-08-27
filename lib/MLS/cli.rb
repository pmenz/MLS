class MLS::Cli

  def call
    #Mls::Scraper.new.get_data

    puts "--------------------------------"
    puts "Welcome to MLS Teams and Players!"
    puts "--------------------------------"
    start
  end

  def start
    puts "."
    puts "What are you interested?"
    puts "1. Player "
    puts "2. Teams "
    puts "3. Exit"
    puts ""
    puts "--------------------------------"
    valid_input(input)


    puts "User input: #{input}"
    if input ==  1
      puts "under construction "
      start
    elsif input == 2
      print_teams
    end
  end

  def print_teams
    Team.list
=begin
    puts ""
    puts ""
    puts "--------------------------------"
    puts "please select the team you are interested"
    input2 = gets

    puts "Roster"
=end
  end


  def valid_input
      input = gets.strip.to_i
    while ((input != 1) && (input != 2)) && (input != 3))
      puts "Wrong selection, please select 1, 2 or 3"
      input = gets.strip.to_i
    end
    input
  end
end
