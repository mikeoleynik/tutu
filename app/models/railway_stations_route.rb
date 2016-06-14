class RailwayStationsRoute < ActiveRecord::Base
  belongs_to :railway_station
  belongs_to :route
  
  validates :railway_station_id, uniqueness: { scope: :route_id }
  validates :number, uniqueness: { scope: :route_id }

  after_validation :station_number

  private
  def station_number
    railway_stations_routes.each_with_index { |station_route, index| station_route.number = index + 1 }
  end
end