class CreateDesks < ActiveRecord::Migration
  def change
    create_table :desks do |t|
      t.string :service_type
      t.timestamps null: false
    end
  end
end
