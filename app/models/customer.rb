class Customer < ApplicationRecord
  has_many :carts

  before_save :titleize_name

  def titleize_name
    self.name.titleize
  end
end
