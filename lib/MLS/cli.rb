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
      team_list
    elsif input == 3
    puts "Goodbye!"
      return
    else
    puts "please select a valid option(1, 2 or 3)"
      user_valid_input
    end
  end

  def player_search
    puts "WIP"
  end

  def team_list
    Team.parse_clubs
    Team.list
  end
=begin
    url = 'https://www.mlssoccer.com/rosters/2020'
    html = open(url)
    data = Nokogiri::HTML(html)
      clubs = data.css('.field li a').map do |el|
      el.text
      end
    clubs.each_with_index do |el, idx|
    puts "#{idx+1}.#{el}."
=end

  end
