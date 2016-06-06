class RailwayStation < ActiveRecord::Base
  has_many :trains, foreign_key: :current_station_id
  has_many :railway_stations_routes
  has_many :routes, through: :railway_stations_routes

  validates :title, presence: true

  scope :ordered, -> { select('railway_stations.*, railway_stations_routes.number').joins(:railway_stations_routes).order("railway_stations_routes.number").uniq }

  private
  def method_name
    # метод принимает маршрут и позицию, поиск по маршруру и обновляю 
  end

end

