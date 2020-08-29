class MLS::Scraper


  def self.get_clubs
    url = 'https://www.mlssoccer.com/rosters/2020'
    html = open(url)
    data = Nokogiri::HTML(html)
    clubs = data.css('.field li a').map do |el|
      {link: "https://www.mlssoccer.com#{el.attr('href')}", name: el.text}
    end
    clubs
  end

  def extract_club_id(string)
    line = string.split(';').find{|str| str.include? "clubID"}
    line.split('=').last.strip
  end

  def roster_link(club_id)
    "https://eos-api.mlsdigital.net/v1/www.mlssoccer.com/players?token=mp7publicdemo&player_status=active&order_by=player_last_name&player_roster_designation=Senior%20Roster&player_roster_designation=Supplemental%20Roster%20Slots%2021-24&player_roster_designation=Supplemental%20Roster%20Slots%2025-28&player_roster_designation=Supplemental%20Roster%20Slots%2029-30&club_opta_id=#{club_id}"
  end

  def team_roster(team_selected)
    clubs = MLS::Scraper.get_clubs
    team_uri = clubs.find{|el| el[:name] == team_selected}[:link]
    html = open(team_uri)
    data = Nokogiri::HTML(html)
    raw_content = data.css('meta[name="description"]').first.attr('content')
    club_id = extract_club_id(raw_content)
    team = roster_link(club_id)
    raw_data = open(team).read
    data = JSON.parse(raw_data)
    player_info = data.map do |player_info| #
      # "#{player_info["jersey_number"]} #{player_info["first_name"]} #{player_info["last_name"]} #{player_info["position"]} #{player_info["roster_designations"]} #{player_info["birt"]}"
      "#{player_info["first_name"]} #{player_info["last_name"]}"
      end
  end
end
