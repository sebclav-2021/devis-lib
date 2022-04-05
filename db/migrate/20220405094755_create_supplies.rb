class CreateSupplies < ActiveRecord::Migration[6.1]
  def change
    create_table :supplies do |t|
      t.references :product, null: false, foreign_key: true
      t.integer :quantity
      t.references :service, null: false, foreign_key: true

      t.timestamps
    end
  end
end
