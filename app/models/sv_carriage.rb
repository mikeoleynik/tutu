class SvCarriage < ActiveRecord::base
  validates :lower_places, presence: true
end