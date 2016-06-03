class Carriage < ActiveRecord::Base
  TYPES = %w(ComfortCarriage EconomyCarriage)
  validates :type_car, presence: true, :inclusion => { :in => TYPES }
  belongs_to :train
end