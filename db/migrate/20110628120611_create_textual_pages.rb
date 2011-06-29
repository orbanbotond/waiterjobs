class CreateTextualPages < ActiveRecord::Migration
  def self.up
    create_table :textual_pages do |t|
      t.string :meta
      t.text :content
      t.string :title

      t.timestamps
    end
  end

  def self.down
    drop_table :textual_pages
  end
end
