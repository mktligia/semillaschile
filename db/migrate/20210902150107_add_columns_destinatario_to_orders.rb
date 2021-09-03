class AddColumnsDestinatarioToOrders < ActiveRecord::Migration[6.1]
  def change
    add_column :orders, :destinatario, :string
    add_column :orders, :telefono, :string
    add_column :orders, :email_d, :string
    add_column :orders, :direccion_de_envio, :string
    add_column :orders, :comuna, :string
    add_column :orders, :ciudad, :string
    add_column :orders, :codigo_postal, :string
  end
end
