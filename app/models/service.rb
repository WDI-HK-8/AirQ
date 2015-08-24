class Service < ActiveRecord::Base
  belongs_to :biz_user
  has_many :sessions
end
