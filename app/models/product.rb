class Product < ApplicationRecord
  has_many :line_items

  monetize :price_cents

  has_one_attached :photo
end
