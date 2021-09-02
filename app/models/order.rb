class Order < ApplicationRecord
  has_many :line_items, dependent: :destroy
  belongs_to :user

  monetize :total_price_cents

  after_create_commit :update_total_price
  after_update_commit :update_total_price

  private

  def update_total_price
    line_items = self.line_items

    amount = 0
    line_items.sum(:total_price_cents) if line_items.size > 0

    update(total_price_cents: amount)
  end
end
