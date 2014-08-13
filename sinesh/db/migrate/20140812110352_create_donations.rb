class CreateDonations < ActiveRecord::Migration
  def change
    create_table :donations do |t|
      t.string :donator_name
      t.string :donator_address
      t.float  :amount
      t.timestamps
    end
  end
end
