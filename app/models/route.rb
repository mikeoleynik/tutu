class Route < ActiveRecord::Base
  validates :title, presence: true

  has_many :railway_stations_routes
  has_many :railway_station, through: :railway_stations_routes
end
