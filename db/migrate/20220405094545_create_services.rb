class CreateServices < ActiveRecord::Migration[6.1]
  def change
    create_table :services do |t|
      t.references :user, null: false, foreign_key: true
      t.references :category, null: false, foreign_key: true
      t.string :name
      t.text :description
      t.boolean :public
      t.string :unit

      t.timestamps
    end
  end
end
