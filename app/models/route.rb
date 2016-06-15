class Route < ActiveRecord::Base
  has_many :trains
  has_many :railway_stations_routes
  has_many :railway_stations, through: :railway_stations_routes

  validates :title, presence: true
  validate :stations_count

  before_validation :set_name

  private
  
  def set_name
    self.title = "#{railway_stations.first.title} - #{railway_stations.last.title}"
  end

  def stations_count
    if railway_stations.size < 2
      errors.add(:base, "Route should contain at least 2 stations")
    end
  end
end

# Можно, но важно, чтобы мы могли менять порядок станций и 
# он бы не изменялся твоим методом при сохранении.

# Добавить возможность указать порядковый номер станции в маршруте (поле для сортировки). 
# Учесть, что одна и та же станция может входить в разные маршруты и иметь разный порядковый номер в 
# разных маршрутах. 
# Выводить список станций в маршруте по порядковому номеру (использовать скоуп для сортировки)