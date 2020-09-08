class Product < ApplicationRecord
  validates :name, presence: true
  validates :price, numericality: { greater_than: true }
  validates :description, length: { in: 2..500 }

  def friendly_updated_at
    updated_at.strftime("%b %d, %Y; %l:%M")
  end

  def is_discounted?
    price <= 10
  end

  def tax
    price * 0.09
  end

  def total
    price + tax
  end
end
