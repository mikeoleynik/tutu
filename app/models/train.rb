class Train < ActiveRecord::Base
  has_many :tickets
  has_many :carriages
  
  belongs_to :route
  belongs_to :current_station, class_name: 'RailwayStation', foreign_key: :current_station_id

  validates :number, presence: true
  
end
