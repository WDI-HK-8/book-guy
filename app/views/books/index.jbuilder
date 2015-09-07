json.array! @books do |book|
  json.id book.id
  json.title book.title
  json.author book.author
  json.publisher_name book.publisher_name
  json.edition_info book.edition_info
  json.cover_image_url book.cover_image_url
  json.summary book.summary
  json.isbn10 book.isbn10
  json.isbn13 book.isbn13
  json.price book.price
  json.condition book.condition
  json.category book.category
  json.notes book.notes
  json.created_at book.created_at
end
