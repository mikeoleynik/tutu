class Train < ActiveRecord::Base
  has_many :tickets
  has_many :carriages
  
  belongs_to :route
  belongs_to :current_station, class_name: 'RailwayStation', foreign_key: :current_station_id

  validates :number, presence: true

  # def sort_carriages_is_head
  #   if self.is_head
  #     @train.carriages.ordered      
  #   end
  # end

  # def sort_carriages_is_tail
  #   if self.tail
  #     @train.carriages.ordered_desc
  #   end
  # end
  
end
