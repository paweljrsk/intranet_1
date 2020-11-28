class Post < ApplicationRecord
  belongs_to :product_type

  validates :title, presence: true
  validates :description, presence: true
  validates :long_description, presence: true
  validates :product_type_id, presence: true

end
