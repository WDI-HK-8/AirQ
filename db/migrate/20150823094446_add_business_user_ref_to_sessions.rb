class AddBusinessUserRefToSessions < ActiveRecord::Migration
  def change
    add_reference :sessions, :business_user, index: true, foreign_key: true
  end
end
