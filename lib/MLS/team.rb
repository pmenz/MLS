class MLS::Team

  attr_accessor :id ,:name, :roster

   def initialize(id=nil, name=nil)
     @id = id
     @name = name
     @roster = roster
     @@clubs << self
   end

    @@clubs = []

   def self.get_clubs
     url = 'https://www.mlssoccer.com/rosters/2020'
     html = open(url)
     data = Nokogiri::HTML(html)
     club = data.css('.field li a').map do |el|
       el.text
     end
     club
   end

   def self.parse_clubs
     get_clubs.each_with_index do |idx , el|
       MLS::Team.new("#{el+1}","#{idx}")
     end
   end

   def self.print_clubs
     puts @@clubs.map{ |team| "#{team.id}. #{team.name}"}
   end


 end
