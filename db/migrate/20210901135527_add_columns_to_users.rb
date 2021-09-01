class AddColumnsToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :telefono, :string
    add_column :users, :ciudad, :string
    add_column :users, :codigo_postal, :string
    add_column :users, :comuna, :string
  end
end
