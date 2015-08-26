  json.array! @bizservices do |bizservice|
  json.id bizservice.id
  json.service_name bizservice.service_name
end