class DropForumTable < ActiveRecord::Migration[5.0]
  def change
  	drop_table :forums
  end
end
