json.outgoings @outgoings do |outgoing|
  json.requestId outgoing.id
  json.createdAt outgoing.created_at
  json.bookTitle outgoing.book.title
  json.bookPublisher outgoing.book.publisher
  json.bookAuthor outgoing.book.author
end
json.incomings @incomings do |incoming|
  json.requestFrom incoming.user.name
  json.requestEmail incoming.user.email
  json.requestId incoming.id
  json.createdAt incoming.created_at
  json.bookTitle incoming.book.title
end
