class ProductType < ApplicationRecord
  belongs_to :product_categories
  has_many :posts

  validates :name, presence: true
  validates :product_category_id, presence: true
end
