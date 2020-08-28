class MLS::Player

  attr_accessor :jersey_number, :position, :roster_designations

  attr_reader :first_name, :last_name, :birth_country
    @@player_info = []
  def initialize(jersey_number, first_name, last_name,
    position, roster_designations, birth_country)

    @jersey_number = jersey_number
    @first_name = first_name
    @last_name = last_name
    @position = position
    @roster_designations = roster_designations
    @birth_country = birth_country
    @@player_info<< self
  end

  

end
