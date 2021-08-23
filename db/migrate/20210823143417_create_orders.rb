class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.string :status
      t.references :user, null: false, foreign_key: true
      
      t.timestamps
    end

    add_monetize :orders, :total_price, currency: { present: false }
  end
end
