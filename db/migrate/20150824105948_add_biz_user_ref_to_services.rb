class AddBizUserRefToServices < ActiveRecord::Migration
  def change
    add_reference :services, :biz_user, index: true, foreign_key: true
  end
end
