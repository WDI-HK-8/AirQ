class CreateDesks < ActiveRecord::Migration
  def change
    create_table :desks do |t|

      t.timestamps null: false
    end
  end
end
