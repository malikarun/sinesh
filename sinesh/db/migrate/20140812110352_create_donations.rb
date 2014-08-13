class CreateDonations < ActiveRecord::Migration
  def change
    create_table :donations do |t|
      t.amount :float
      t.integer :user_id
      t.timestamps
    end

    add_index :donations, :user_id
  end
end
