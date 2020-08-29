class MLS::Team

  attr_accessor :id ,:name, :roster
  @@scraper = nil

   def initialize(id=nil, name=nil)
     @id = id
     @name = name
     @roster = roster
     @@clubs << self
   end

    @@clubs = []

   def self.get_clubs
     MLS::Scraper.get_clubs
   end

   def self.roster_for_team_number(number)
     #scraper = MLS::Scraper.new
     #clubs = get_clubs
     name = @@clubs.find {|team| team.id == number}.name
     scraper.team_roster(name)
   end

   def self.parse_clubs
     get_clubs.each_with_index do |el , idx|
       MLS::Team.new("#{idx+1}","#{el[:name]}")
     end
   end

   def self.print_clubs
     puts @@clubs.map{ |team| "#{team.id}. #{team.name}"}
   end

  def self.scraper
    @@scraper = MLS::Scraper.new unless @@scraper
    @@scraper
  end


 end
