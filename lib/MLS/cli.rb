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
    puts ""
    puts "--------------------------------"
    input = gets.strip.to_i
    valid_input(input)
    puts "User input: #{input}"
=begin
    if input ==  1
      puts "under construction "
      start
    elsif input == 2
      print_teams
    end

    puts ""
    puts ""
    puts "--------------------------------"
    puts "please select the team you are interested"
    input2 = gets

    Team.list

    puts "Roster"
=end
  end



  def valid_input(input)
    while ((input != 1) || (input != 2))
      puts "Wrong selection, please select 1, 2 or 3"
      input = gets.strip.to_i
    end
    input
  end
end
