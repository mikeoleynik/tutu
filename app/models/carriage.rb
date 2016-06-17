class Carriage < ActiveRecord::Base
  TYPES = %w(ComfortCarriage EconomyCarriage SitCarriage SvCarriage)

  belongs_to :train
  
  validates :type_car, presence: true, inclusion: { in: TYPES }
  validates :number, uniqueness: { scope: :train_id }
  
  before_validation :set_number

  private
    def set_number
      number = train.carriages.maximum(:number)
      self.number = number.nil? ? 1 : number + 1
    end
end