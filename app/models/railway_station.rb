class RailwayStation < ActiveRecord::Base
  has_many :trains, class_name: 'Train', foreign_key: :trains_id
  has_many :railway_stations_routes
  has_many :routes, through: :railway_stations_routes

  validates :title, presence: true
end
