class Route < ActiveRecord::Base
  has_many :trains
  has_many :railway_stations_routes
  has_many :railway_stations, through: :railway_stations_routes

  validates :title, presence: true

  before_validation :set_name

  private
  def set_name
    self.title = "#{railway_stations.first.title} - #{railway_stations.last.title}"
  end
end
