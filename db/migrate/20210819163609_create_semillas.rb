class CreateSemillas < ActiveRecord::Migration[6.1]
  def change
    create_table :semillas do |t|
      t.string :name
      t.text :description
      t.float :price
      t.text :address

      t.timestamps
    end
  end
end
