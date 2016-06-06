class SitCarriage < ActiveRecord::Base
  validates :sit_places, presence: true
end