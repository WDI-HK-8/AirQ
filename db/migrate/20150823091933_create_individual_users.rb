class CreateIndividualUsers < ActiveRecord::Migration
  def change
    create_table :individual_users do |t|

      t.timestamps null: false
    end
  end
end
