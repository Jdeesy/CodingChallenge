class CreateAuctions < ActiveRecord::Migration[5.1]
  def change
    create_table :auctions do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :state
      t.integer :zip
      t.integer :vehicle_year
      t.string :vehicle_make
      t.string :vehicle_model
      t.integer :vehicle_stock_number
      t.integer :winning_bid
      t.integer :seller_payout
      t.string :description

      t.timestamps
    end
  end
end
