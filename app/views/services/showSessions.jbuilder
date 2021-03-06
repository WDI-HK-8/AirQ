  json.array! @serviceSessions do |serviceSession|
  json.id                   serviceSession.id
  json.user_id              serviceSession.user_id
  json.service_id           serviceSession.service_id
  json.user_first_name      serviceSession.user.first_name
  json.user_last_name       serviceSession.user.last_name
  json.is_completed         serviceSession.is_completed
  json.created_at           serviceSession.created_at
  json.updated_at           serviceSession.updated_at
end
