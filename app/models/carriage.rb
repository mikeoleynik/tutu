class Carriage < ActiveRecord::Base
  TYPES = %w(ComfortCarriage EconomyCarriage SitCarriage SvCarriage)
  
  validates :type_car, presence: true, inclusion: { in: TYPES }
  validates :number, uniqueness: { scope: :train_id }
  
  belongs_to :train

  before_validation :set_number

  private
  def set_number
    number = train.carriages.maximum(:number)
    self.number = number.nil? ? 1 : number + 1
  end
end