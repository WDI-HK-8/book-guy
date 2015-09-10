json.outgoings @outgoings do |outgoing|
  json.request_id outgoing.id
  json.created_at outgoing.created_at
  json.book outgoing.book
end
json.incomings @incomings do |incoming|
  json.request_from incoming.user.name
  json.request_email incoming.user.email
  json.request_id incoming.id
  json.created_at incoming.created_at
  json.book incoming.book
end
