class BusinessUser < ActiveRecord::Base
  # Include default devise modules.
  devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :trackable, :validatable,
          :omniauthable
  include DeviseTokenAuth::Concerns::User
  belongs_to :company
  has_many :sessions
  has_many :desks
  has_many :individual_users, through: :sessions
end
