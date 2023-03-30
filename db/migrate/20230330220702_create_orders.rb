class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.decimal :total_value
      t.string :status
      t.datetime :order_date
      t.text :shipping_address
      t.text :billing_address
      t.string :payment_method
      t.text :items
      t.string :tracking_number
      t.datetime :delivery_date

      t.timestamps
    end
  end
end
