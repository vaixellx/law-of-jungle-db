class Card < ApplicationRecord
  CREATORS = %w(Lap Boat Beer)
  STATUSES = %w(draft printed approved modify_needed deleted)
  TYPES    = %w(event_jungle event_city item_help item_poke)

  validates_presence_of :title, :description, :creator, :status, :card_type
end
