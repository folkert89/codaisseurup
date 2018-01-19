class Event < ApplicationRecord
#  include "comparable"
  belongs_to :user
  has_and_belongs_to_many :categories
  has_many :photos
  has_many :bookings, dependent: :destroy
  has_many :guests, through: :bookings, source: :user

  validates :name, presence: true
  validates :description, presence: true, length: { maximum: 500 }
  validates :starts_at, :ends_at, presence: true
  def bargain?
    price < 30
  end
  def self.order_by_price
    order :price
  end
  # validates :ends_at_cannot_be_in_the_pas
  #
  # private
  #
  # def ends_at_cannot_be_in_the_pas
  #   if ends_at.present? && ends_at < starts_at
  #     errors.add(:ends_at, "can't be in the past")
  #   end
  # end
  # # validates :bigger_then(:starts_at, :ends_at)
  #
  # #
  # def bigger_then(start, nog)
  #   if start < nog
  #     errors.add(:starts_at, "Startdate can't be later than end date")
  # #   end
  # end

end
