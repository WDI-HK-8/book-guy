class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def create
    @book = Book.new(post_params)

    if @book.save
      # render success in Jbuilder
    else
      render json: { message: "400 Bad Request" }, status: :bad_request
    end
  end

  def show
    @book = Book.find_by_id(params[:id])

    if @book.nil?
      render json: { message: "Cannot find book" }, status: :not_found
    end
  end

  def update
    @book = Book.find_by_id(params[:id])

    if @book.nil?
      render json: { message: "Cannot find book" }, status: :not_found
    else
      @book.update(post_params)
    end
  end

  def destroy
    @book = Book.find_by_id(params[:id])

    if @book.nil?
      render json: { message: "Cannot find book" }, status: :not_found
    else
      if @book.destroy
        render json: { message: "Successfully deleted" }, status: :no_content
      else
        render json: { message: "Unsuccessfully deleted" }, status: :bad_request
      end
    end
  end

  private

  def post_params
    params.require(:book).permit(:title, :author, :publisher_name, :edition_info, :cover_image_url, :summary, :isbn10, :isbn13, :price, :condition, :category, :notes)
  end
end
