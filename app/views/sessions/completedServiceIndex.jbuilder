json.array! @completedServiceSessions do |completedServiceSession|
  json.id completedServiceSession.id
  json.service_id completedServiceSession.service_id
  json.service_name completedServiceSession.service.service_name
  json.userid completedServiceSession.user_id
  json.session_user_first_name completedServiceSession.user.first_name
  json.session_user_last_name completedServiceSession.user.last_name
  json.session_user_email completedServiceSession.user.email
  json.session_user_phone_number completedServiceSession.user.phone_number
  json.session_is_completed? completedServiceSession.is_completed?
  json.created_at completedServiceSession.created_at
  json.updated_at completedServiceSession.updated_at
end
