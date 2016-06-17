class EconomyCarriage < Carriage
  validates :up_places, :lower_places, :side_up_places, :side_lower_places, presence: true
end
