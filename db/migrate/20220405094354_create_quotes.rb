class CreateQuotes < ActiveRecord::Migration[6.1]
  def change
    create_table :quotes do |t|
      t.references :user, null: false, foreign_key: true
      t.references :customer, null: false, foreign_key: true
      t.date :creation_date
      t.string :due_date
      t.text :comment
      t.string :payment_choice
      t.integer :price
      t.integer :coeff

      t.timestamps
    end
  end
end
