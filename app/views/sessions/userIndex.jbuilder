json.array! @userSessions do |userSession|
  json.id userSession.id
  json.userid userSession.user_id
  json.service_id userSession.service_id
  json.service_name userSession.service.service_name
  json.service_company userSession.service.biz_user.company_name
  json.service_company_email userSession.service.biz_user.email
  json.service_company_address userSession.service.biz_user.address
  json.service_company_phone_number userSession.service.biz_user.phone_number
  json.created_at userSession.created_at
  json.updated_at userSession.updated_at
end
