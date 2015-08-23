class IndividualUser < ActiveRecord::Base
  has_many :sessions
  has_many :business_users, through: :sessions
end
