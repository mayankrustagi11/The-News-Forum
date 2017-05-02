class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :Username
      t.string :Password
      t.string :First_Name
      t.string :Last_Name
      t.string :Gender
      t.string :Email
      t.string :Mobile

      t.timestamps
    end
  end
end
