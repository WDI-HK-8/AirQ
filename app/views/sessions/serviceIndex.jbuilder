json.array! @serviceSessions do |serviceSession|
  json.id serviceSession.id
  json.service_id serviceSession.service_id
  json.service_name serviceSession.service.service_name
  json.userid serviceSession.user_id
  json.session_user_first_name serviceSession.user.first_name
  json.session_user_last_name serviceSession.user.last_name
  json.session_user_email serviceSession.user.email
  json.session_user_phone_number serviceSession.user.phone_number
  json.session_is_completed? serviceSession.is_completed?
  json.created_at serviceSession.created_at
  json.updated_at serviceSession.updated_at
end
