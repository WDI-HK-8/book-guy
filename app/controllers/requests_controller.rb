class RequestsController < ApplicationController
  before_action :authenticate_user!

  def create
    @request = current_user.requests.new(post_params)

    if @request.save
      UserMailer.request_email(@request.book.user, @request.book).deliver_now if @request.book.user.notification
    else
      render json: { message: "400 Bad Request" }, status: :bad_request
    end
  end

  def index
    @outgoings = current_user.requests.all
    @incomings = Request.joins(:book).where('books.user_id' => current_user.id)
  end

  private

  def post_params
    params.require(:request).permit(:book_id)
  end
end
