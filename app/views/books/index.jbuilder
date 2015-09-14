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
  json.your_book book.user_id === current_user.id if user_signed_in?
  json.request_sent current_user.requests.where(book_id: book.id).any? if user_signed_in?
end
