class Session < ActiveRecord::Base
  belongs_to :individual_user
  belongs_to :business_user
end
