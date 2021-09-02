class AddQuantityToLineItems < ActiveRecord::Migration[6.1]
  def change
    remove_column :line_items, :amount
    add_column :line_items, :cantidad, :integer
    add_monetize :line_items, :unit_price, currency: { present: false }
  end
end
