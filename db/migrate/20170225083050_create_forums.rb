class CreateForums < ActiveRecord::Migration[5.0]
  def change
    create_table :forums do |t|
      t.string :Username
      t.string :Password
      t.string :CPassword
      t.string :First_Name
      t.string :Last_Name
      t.boolean :Gender
      t.string :Email
      t.string :Mobile

      t.timestamps
    end
  end
end
