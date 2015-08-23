class AddCompanyRefToBusinessUsers < ActiveRecord::Migration
  def change
    add_reference :business_users, :company, index: true, foreign_key: true
  end
end
