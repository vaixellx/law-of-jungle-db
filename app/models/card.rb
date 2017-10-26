class Card < ApplicationRecord
  CREATORS = %w(Lap Boat Beer)
  STATUSES = %w(draft printed approved modify_needed deleted)
  TYPES    = %w(event_jungle event_town item_help item_poke)

  validates_presence_of :title, :description, :creator, :status, :card_type

  after_create :add_running_number

  private

  def add_running_number
    last_running_number = Card
                            .where.not(running_number: nil)
                            .order(running_number: :desc)
                            .first
                            .running_number
    update running_number: last_running_number + 1
  end
end
