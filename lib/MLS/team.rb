class MLS::Team

  @@teams = []
  attr_accessor :id ,:name, :roster

  def initialize(id=nil, name=nil)
    @id = id
    @name = name
    @roster = roster
    @@teams << self
  end

  def self.parse_clubs
    Scraper.get_clubs_info.each do |idx , el|
      Team.new("#{i+1}","#{el}")
    end
  end

  def self.list
    @@teams.each do |el|
      puts "#{Team.id}. #{Team.name}"
    end
  end
end
