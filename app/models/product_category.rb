class ProductCategory < ApplicationRecord
has_many :product_types
has_many :posts, through: :product_types

validates :name, presence: true

end
