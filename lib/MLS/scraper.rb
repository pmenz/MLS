class MLS::Scraper

attr_accessor :name

def self.get_clubs_info
  url = 'https://www.mlssoccer.com/rosters/2020'
  html = open(url)
  data = Nokogiri::HTML(html)
  clubs = data.css('.field li a').map do |el|
    el.text
  end
  clubs
end

def extract_club_id(string)
  line = string.split(';').find{|str| str.include? "clubID"}
  line.split('=').last.strip
end

def roster_link(club_id)
  "https://eos-api.mlsdigital.net/v1/www.mlssoccer.com/players?token=
  mp7publicdemo&player_status=active&order_by=player_last_name&player_roster
  _designation=Senior%20Roster&player_roster_designation=Supplemental%20Roster%20Slots%2021
  -24&player_roster_designation=Supplemental%20Roster%20Slots%2025-28&player_roster_designation
  =Supplemental%20Roster%20Slots%2029-30&club_opta_id=#{club_id}"
end

end
