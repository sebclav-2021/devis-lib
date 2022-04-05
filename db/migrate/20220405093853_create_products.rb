class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :unite
      t.integer :price
      t.string :name
      t.boolean :public
      t.boolean :workforce

      t.timestamps
    end
  end
end
