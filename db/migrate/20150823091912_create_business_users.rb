class CreateBusinessUsers < ActiveRecord::Migration
  def change
    create_table :business_users do |t|
      t.string  :name
      t.integer :phone_number
      t.string  :email
      t.text    :address
      t.string  :password
      t.string  :confirm_password
      t.timestamps null: false
    end
  end
end
