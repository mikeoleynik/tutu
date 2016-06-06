class Carriage < ActiveRecord::Base
  TYPES = %w(ComfortCarriage EconomyCarriage SvCarriage SitCarriage)

  validates :number, presence: true, uniqueness: { scope: :train_id }
  validates :type_car, presence: true, inclusion: { in: TYPES }
  validates :up_places, :lower_places, presence: true
  
  belongs_to :train

  after_validation :serial_number

  private

  def serial_number
    self.number = Carriage.maximum(:number) + 1 # через ключ значение? вывсти во вьюхе || default_scope { order(:number)}
  end
end