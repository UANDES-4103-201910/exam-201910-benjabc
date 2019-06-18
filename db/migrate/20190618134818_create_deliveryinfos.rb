class CreateDeliveryinfos < ActiveRecord::Migration[5.2]
  def change
    create_table :deliveryinfos do |t|
      t.references :order, foreign_key: true
      t.string :billingAddress
      t.string :shippingAddress

      t.timestamps
    end
  end
end
