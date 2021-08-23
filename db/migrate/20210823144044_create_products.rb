class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :name
      t.string :content
      t.string :address
      t.string :country

      t.timestamps
    end

    add_monetize :products, :price, currency: { present: false }
  end
end
