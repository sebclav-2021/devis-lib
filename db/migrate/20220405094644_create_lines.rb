class CreateLines < ActiveRecord::Migration[6.1]
  def change
    create_table :lines do |t|
      t.references :service, null: false, foreign_key: true
      t.references :quote, null: false, foreign_key: true
      t.boolean :workforce
      t.integer :quantity

      t.timestamps
    end
  end
end
