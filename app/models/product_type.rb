class ProductType < ApplicationRecord
  belongs_to :product_category
  has_many :posts

  validates :name, presence: true
  validates :product_category_id, presence: true
end
