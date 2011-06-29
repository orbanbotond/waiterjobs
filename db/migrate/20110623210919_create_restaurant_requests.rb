class CreateRestaurantRequests < ActiveRecord::Migration
  def self.up
    create_table :restaurant_requests do |t|
      t.string :contact_person
      t.string :restaurant_name
      t.string :phone
      t.string :email
      t.string :availability

      t.timestamps
    end
  end

  def self.down
    drop_table :restaurant_requests
  end
end
