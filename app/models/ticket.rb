class Ticket < ApplicationRecord
  belongs_to :user, optional: true
  belogns_to :event

  validates :comment, length: { maximum: 30 }, allow_blank: true
end
