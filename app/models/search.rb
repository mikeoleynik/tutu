class Search
  def self.search_trains(station_first, station_last)
    if station_first != station_last
      routes = Route.joins(:railsway_stations).where(railsway_stations: { id: station_first }) &
               Route.joins(:railsway_stations).where(railsway_stations: { id: station_last })
      Train.joins(:route).where(route: routes)
    end
  end
end