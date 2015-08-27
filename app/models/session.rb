class Session < ActiveRecord::Base
  validates :user_id, :service_id, presence: true
  belongs_to :user
  belongs_to :service
end
