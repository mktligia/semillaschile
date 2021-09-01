class Order < ApplicationRecord
  has_many :line_items
  belongs_to :user
  monetize :total_price_cents
  belongs_to :product
end
