json.array! @services do |service|
  json.id service.id
  json.service_name service.service_name
  json.industry_name service.biz_user.industry_name
  json.company_name service.biz_user.company_name
  json.address service.biz_user.address
  json.phone_number service.biz_user.phone_number
  json.email service.biz_user.email
end
