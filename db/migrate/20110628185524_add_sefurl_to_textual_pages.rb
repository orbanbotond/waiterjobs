class AddSefurlToTextualPages < ActiveRecord::Migration
  def self.up
    add_column :textual_pages, :sefurl, :string
  end

  def self.down
    remove_column :textual_pages, :sefurl
  end
end
