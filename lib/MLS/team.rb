class MLS::Teams

  @@teams = []
  attr_accesor :id ,:name, :roster

  def initialize(id, name)
    @id = id
    @name = name
    @roster = roster
    @@teams << self
  end

  def self.display_clubs
    Scraper.get_clubs
  end


  def self.all
    @@teams
  end

end
