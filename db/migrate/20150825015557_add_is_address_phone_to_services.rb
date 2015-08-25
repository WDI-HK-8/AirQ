class AddIsAddressPhoneToServices < ActiveRecord::Migration
  def change
    add_column :services, :service_address, :text, :default => "Same as Company Address"
    add_column :services, :service_phone_num, :string, :default => "Same as Company Phone number"
  end
end
