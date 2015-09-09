class RequestMailer < ApplicationMailer
  default from: ENV['REQUEST_DEFAULT_FROM']

   def request_email(user, book)
     @user = user
     @book = book
     mail(to: @user.email, subject: 'Someone wants to buy your book')
   end
end
