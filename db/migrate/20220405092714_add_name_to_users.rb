class AddNameToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :status, :string
    add_column :users, :address, :string
    add_column :users, :phone, :string
    add_column :users, :siret, :string
  end
end
