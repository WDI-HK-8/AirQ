class Session < ActiveRecord::Base
  validates :user_id, :service_id, presence: true
  belongs_to :user
  belongs_to :service

  def average_time
    Session.where(is_completed: true, service: service).limit(5).average(updated_at - created_at)
  end
end
