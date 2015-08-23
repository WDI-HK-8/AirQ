class AddCompanyNameToBusinessUsers < ActiveRecord::Migration
  def change
    add_column :business_users, :company_name, :string
  end
end
