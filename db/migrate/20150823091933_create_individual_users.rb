class CreateIndividualUsers < ActiveRecord::Migration
  def change
    create_table :individual_users do |t|
      t.string  :email
      t.integer :phone_number
      t.string  :first_name
      t.string  :last_name
      t.string  :password
      t.string  :confirm_password
      t.timestamps null: false
    end
  end
end
