class RailwayStation < ActiveRecord::Base
  has_many :trains, foreign_key: :current_station_id
  has_many :railway_stations_routes
  has_many :routes, through: :railway_stations_routes

  validates :title, presence: true

  scope ordered, -> { order(:number) } # это вывод станций по поряд.номеру. откуда взять :number? написать метод
end
