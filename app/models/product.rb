class Product < ApplicationRecord
  has_many :line_items

  monetize :price_cents

  has_one_attached :photo
  validates :category, inclusion: { in: ["Ramos de flores", "Arreglos florales", "Canastos, centros y cubreurnas", "Coronas", "Dias especiales"] }
end
