class AddIndividualUserRefToSessions < ActiveRecord::Migration
  def change
    add_reference :sessions, :individual_user, index: true, foreign_key: true
  end
end
