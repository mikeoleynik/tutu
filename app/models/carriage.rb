class Carriage < ActiveRecord::Base
  TYPES = %w(ComfortCarriage EconomyCarriage SitCarriage SvCarriage)
  validates :type_car, presence: true, inclusion: { in: TYPES }
  validates :up_places, :lower_places, presence: true
  belongs_to :train
end