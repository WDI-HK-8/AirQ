class Company < ActiveRecord::Base
  has_many :business_users
end
