class CreateAdmins < ActiveRecord::Migration[5.0]
  def change
    create_table :admins do |t|
      t.string :adminid
      t.string :password
      t.string :fname
      t.string :lname
      t.datetime :lastlogin

      t.timestamps
    end
  end
end
