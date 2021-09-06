class RemoveProductIdFromOrders < ActiveRecord::Migration[6.1]
  def change
    remove_reference :orders, :product
  end
end
