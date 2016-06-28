class Ticket < ActiveRecord::Base
  belongs_to :user 
  belongs_to :train
  belongs_to :primary_station, class_name: 'RailwayStation', foreign_key: :primary_station_id
  belongs_to :terminal_station, class_name: 'RailwayStation', foreign_key: :terminal_station_id

  validates :number, presence: true

  after_create :send_notification

  private
  def send_notification
    TicketsMailer.buy_ticket(self.user, self).deliver_now
  end
end