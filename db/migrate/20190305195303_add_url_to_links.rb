class AddUrlToLinks < ActiveRecord::Migration[5.2]
  def change
    add_column :links, :url, :text
  end
end
