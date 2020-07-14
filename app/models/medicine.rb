class Medicine < ApplicationRecord
  has_many :cart_items

  validates :value, presence: true
  validates :quantity, presence: true

  def total
    value * quantity
  end
end
