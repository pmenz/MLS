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
    print "option:"
    valid_input


    puts "User input: #{input}"
    if input ==  1
      puts "under construction "
      start
    elsif input == 2
      print_teams
    end
  end

  def player_search
    puts "WIP"
  end

  def mls_teams
    puts "mls_teams"
  end

  #def print_teams
    #Team.list
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
      case input
      when input == 1
        player_search
      when input == 2
        mls_teams
      when input == 3
        puts "Good bye"
        return
      else
        puts "please select a valid option(1,2 or 3)"
        puts "Option:"
        valid_input
      end

    end
