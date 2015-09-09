class RequestsController < ApplicationController
  before_action :authenticate_user!

  def create
    @request = current_user.requests.new(post_params)

    if @request.save
      # render success in Jbuilder
    else
      render json: { message: "400 Bad Request" }, status: :bad_request
    end
  end

  private

  def post_params
    params.require(:request).permit(:book_id)
  end
end
