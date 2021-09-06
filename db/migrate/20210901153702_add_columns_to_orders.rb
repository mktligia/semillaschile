class AddColumnsToOrders < ActiveRecord::Migration[6.1]
  def change
    add_reference :orders, :product, index: true
  end
end
