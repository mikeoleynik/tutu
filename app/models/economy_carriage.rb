class EconomyCarriage < Carriage
  validates :side_up_places, :side_lower_places, presence: true
end