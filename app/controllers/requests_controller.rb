class RequestsController < ApplicationController
  before_action :authenticate_user!

  def create
    @request = current_user.requests.new(post_params)

    if @request.save
      UserMailer.request_email(@request.book.user, @request.book).deliver_now
    else
      render json: { message: "400 Bad Request" }, status: :bad_request
    end
  end

  private

  def post_params
    params.require(:request).permit(:book_id)
  end
end
