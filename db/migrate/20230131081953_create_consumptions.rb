class CreateConsumptions < ActiveRecord::Migration[7.0]
  def change
    create_table :consumptions do |t|
      t.references :user, null: false, foreign_key: true
      t.text :titre
      t.text :type
      t.date :consumption_date
      t.text :commentary
      t.integer :note

      t.timestamps
    end
  end
end
