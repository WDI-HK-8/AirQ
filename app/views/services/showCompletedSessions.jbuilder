  json.array! @serviceCompletedSessions do |serviceCompletedSession|
  json.id                   serviceCompletedSession.id
  json.user_id              serviceCompletedSession.user_id
  json.service_id           serviceCompletedSession.service_id
  json.user_first_name      serviceCompletedSession.user.first_name
  json.user_last_name       serviceCompletedSession.user.last_name
  json.is_completed?        serviceCompletedSession.is_completed?
  json.created_at           serviceCompletedSession.created_at
  json.updated_at           serviceCompletedSession.updated_at


end

