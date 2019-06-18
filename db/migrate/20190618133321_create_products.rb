class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :brand
      t.string :model
      t.string :variant
      t.integer :price
      t.string :shortDescription
      t.text :longDescription
      t.string :type

      t.timestamps
    end
  end
end
