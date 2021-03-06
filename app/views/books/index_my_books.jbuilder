json.array! @books do |book|
  json.id book.id
  json.title book.title
  json.author book.author
  json.publisher book.publisher
  json.published_date book.published_date
  json.description book.description
  json.page_count book.page_count
  json.category book.category
  json.small_thumbnail book.small_thumbnail
  json.thumbnail book.thumbnail
  json.isbn10 book.isbn10
  json.isbn13 book.isbn13
  json.price book.price
  json.condition book.condition
  json.notes book.notes
  json.created_at book.created_at
end
