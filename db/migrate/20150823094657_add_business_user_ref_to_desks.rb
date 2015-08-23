class AddBusinessUserRefToDesks < ActiveRecord::Migration
  def change
    add_reference :desks, :business_user, index: true, foreign_key: true
  end
end
