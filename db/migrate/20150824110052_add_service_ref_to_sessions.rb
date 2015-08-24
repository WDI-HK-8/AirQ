class AddServiceRefToSessions < ActiveRecord::Migration
  def change
    add_reference :sessions, :service, index: true, foreign_key: true
  end
end
