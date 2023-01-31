class CreateEntertainments < ActiveRecord::Migration[7.0]
  def change
    create_table :entertainments do |t|
      t.string :name
      t.string :type
      t.string :image_url

      t.timestamps
    end
  end
end
