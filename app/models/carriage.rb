class Carriage < ActiveRecord::Base
  TYPES = %w(ComfortCarriage EconomyCarriage SvCarriage SitCarriage)

  validates :number, presence: true, uniqueness: { scope: :train_id }
  validates :type, presence: true, inclusion: { in: TYPES } #сделать через ключ значение in: TYPES.values,  {"купе" => "ComfortCarriage", ..}
  validates :up_places, :lower_places, presence: true
  validates :train_id, presence: true

  belongs_to :train

  before_validation :serial_number, on: :create 

  # scope ordered, -> { order(:number)}

  private

  def serial_number
    return unless train
    self.number ||= train.carriages.maximum(:number)
    self.number = number + 1
  end
end

 