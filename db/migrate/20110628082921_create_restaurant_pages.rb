class CreateRestaurantPages < ActiveRecord::Migration
  def self.up
    create_table :restaurant_pages do |t|
      t.text :address
      t.string :meta
      t.text :content
      t.string :city
      t.string :sefurl
      t.string :name
      t.string :title

      t.timestamps
    end
  end

  def self.down
    drop_table :restaurant_pages
  end
end
