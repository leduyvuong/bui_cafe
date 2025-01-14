class Product < ApplicationRecord
  belongs_to :category
  has_many :images
  has_one_attached :image
end
