class MLS::Teams

  @@teams = []
  attr_accesor :id ,:name, :roster

  def initialize(id, name)
    @id = id
    @name = name
    @roster = roster
    @@teams << self
  end

  def self.parse_clubs
    Scraper.get_clubs_info.each do |idx , el|
      Team.new("#{i+1}","#{el}")
  end

  def self.list

  def

  def self.all
    @@teams
  end

end
