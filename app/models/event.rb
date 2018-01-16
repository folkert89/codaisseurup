class Event < ApplicationRecord
#  include "comparable"
  belongs_to :user

  validates :name, presence: true
  validates :description, presence: true, length: { maximum: 500 }
  validates :starts_at, :ends_at, presence: true
  # # validates :bigger_then(:starts_at, :ends_at)
  #
  # #
  # def bigger_then(start, nog)
  #   if start < nog
  #     errors.add(:starts_at, "Startdate can't be later than end date")
  # #   end
  # end

end
