class Search
  def self.search_trains(primary_station, terminal_station)
    if primary_station != terminal_station
      routes = Route.joins(:railway_stations).where(railway_stations: { id: primary_station }) &
               Route.joins(:railway_stations).where(railway_stations: { id: terminal_station })
      Train.joins(:route).where(route: routes)
    end
  end
end
