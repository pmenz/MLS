class WorldsBestRestaurants

  def call
    WorldsBestRestaurants::Scraper.new.make_restaurants
    puts "Welcome to the 50 Best Restaurants in the World"
    start
  end




welcome messages and menu option

**menu option
"would you like to see:
1-Teams
2-lookup for PLayers"
3-exit

Case 1

Teams call scrapper.teams

Teams class will return the roster

**teams menu option
1-Select to team to see its roster.
2-back main menu

case 1

Teams class will call scrapper(selected team)
scrapper_roster will return roster

menuis

Teams
#if teams selected:

cli will call teams,teams will call scrapper , scraper will get the teams list

**teams_menu_option
-select a team
-go back
