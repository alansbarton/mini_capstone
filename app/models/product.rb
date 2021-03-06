class Product < ApplicationRecord
  validates :name, presence: true
  validates :price, numericality: { greater_than: 0 }
  validates :description, length: { in: 2..500 }

  def friendly_updated_at
    updated_at.strftime("%b %d, %Y; %l:%M")
  end

  belongs_to :supplier
  has_many :images
  has_many :category_products
  has_many :categories, through: :category_products

  has_many :orders, through: :carted_products
  has_many :carted_products

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
