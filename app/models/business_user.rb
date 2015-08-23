class BusinessUser < ActiveRecord::Base
  belongs_to :company
  has_many :sessions
  has_many :desks
  has_many :individual_users, through: :sessions
end
