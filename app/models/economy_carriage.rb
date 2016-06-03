class EconomyCarriage < Carriage
  validates :up_places, :lower_places, presence: true
end