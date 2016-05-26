class Ticket < ActiveRecord::Base
  belongs_to :user 
  belongs_to :train
  belongs_to :primary_station, class_name: 'RailwayStation', foreign_key: :primary_station_id
  belongs_to :terminal_station, class_name: 'RailwayStation', foreign_key: :terminal_station_id
end