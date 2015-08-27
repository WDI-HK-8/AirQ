json.array! @user_sessions do |user_session|
  json.id                           user_session.id
  json.userid                       user_session.user_id
  json.service_id                   user_session.service_id
  json.service_name                 user_session.service.service_name
  json.service_company              user_session.service.biz_user.company_name
  json.service_company_email        user_session.service.biz_user.email
  json.service_company_address      user_session.service.biz_user.address
  json.service_company_phone_number user_session.service.biz_user.phone_number
  json.service_average_wait         user_session.average_time
  json.created_at                   user_session.created_at
  json.updated_at                   user_session.updated_at
end
