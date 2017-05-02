class CreateNotices < ActiveRecord::Migration[5.0]
  def change
    create_table :notices do |t|
      t.string :adminid
      t.text :title
      t.datetime :date
      t.datetime :expiry
      t.text :text
      t.text :newstype

      t.timestamps
    end
  end
end
