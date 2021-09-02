class LineItem < ApplicationRecord
  belongs_to :order
  belongs_to :product

  monetize :unit_price
  monetize :total_price_cents

  after_create_commit :update_total_price

  private

  def update_total_price
    q = self.quantity
    unit_price = self.unit_price
    total_price = unit_price * q

    update(total_price_cents: total_price)
  end
end
