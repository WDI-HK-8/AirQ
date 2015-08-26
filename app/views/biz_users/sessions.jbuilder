json.array! @bizusersessions do |bizusersession|
  json.id               bizusersession.id
  json.user_id          bizusersession.user_id
  json.service_id       bizusersession.service_id
  json.service_name     bizusersession.service.service_name
  json.user_first_name  bizusersession.user.first_name
  json.user_last_name   bizusersession.user.last_name
  json.user_email       bizusersession.user.email
  json.user_phone_num   bizusersession.user.phone_number
  json.created_at       bizusersession.created_at
  json.updated_at       bizusersession.updated_at
end

