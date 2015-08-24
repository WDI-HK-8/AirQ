class AddIsCompletedToSessions < ActiveRecord::Migration
  def change
    add_column :sessions, :is_completed?, :boolean, :default => "false"
  end
end
