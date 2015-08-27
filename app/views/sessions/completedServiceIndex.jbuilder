json.array! @completedServiceSessions do |completedServiceSession|
  json.id                           completedServiceSession.id
  json.service_id                   completedServiceSession.service_id
  json.service_name                 completedServiceSession.service.service_name
  json.userid                       completedServiceSession.user_id
  json.user_first_name              completedServiceSession.first_name
  json.user_last_name               completedServiceSession.last_name
  json.user_email                   completedServiceSession.email
  json.user_phone_number            completedServiceSession.phone_number
  json.created_at                   completedServiceSession.created_at
  json.updated_at                   completedServiceSession.updated_at
end
