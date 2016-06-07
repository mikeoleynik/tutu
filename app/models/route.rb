class Route < ActiveRecord::Base
  has_many :trains
  has_many :railway_stations_routes
  has_many :railway_stations, through: :railway_stations_routes

  validates :title, presence: true

  before_validation :set_name

  before_validation :set_number
  scope :ordered, -> { select('railway_stations.*, railway_stations_routes.number').joins(:railway_stations_routes).order("railway_stations_routes.number").uniq }

  private
  def set_name
    self.title = "#{railway_stations.first.title} - #{railway_stations.last.title}"
  end

  def set_stations_number
    railway_stations_routes.each_with_index { |station_route, index| station_route.number = index + 1 }
  end
end
