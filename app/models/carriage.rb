class Carriage < ActiveRecord::Base
  TYPES = %w(ComfortCarriage EconomyCarriage SvCarriage SitCarriage)

  validates :number, presence: true, uniqueness: { scope: :train_id }
  validates :type_car, presence: true, inclusion: { in: TYPES }
  validates :up_places, :lower_places, presence: true
  
  belongs_to :train

  after_validation :serial_number # используя колбеки

  # scope ordered, -> { order(:number)}

  private

  def serial_number
    self.number = Carriage.maximum(:number) + 1 # можно ли в метод скоуп? default_scope { order(:number)}
  end
end