class MLS::Player

  attr_accessor :name, :jersey_number, :status
  attr_reader :team

  def initialize(name, jersey_number, status)
    @name = name
    @jersey_number = jersey_number
    @status = status
    @team = team
  end


end
