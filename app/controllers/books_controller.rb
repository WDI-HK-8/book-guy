class BooksController < ApplicationController
  before_action :authenticate_user!, :except => [:index]

  def index
    @books = Book.all
  end

  def home
    @books = current_user.books.all
  end

  def create
    @book = current_user.books.new(post_params)

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
    @book = current_user.books.find_by_id(params[:id])

    if @book.nil?
      render json: { message: "Cannot find book" }, status: :not_found
    else
      @book.update(post_params)
    end
  end

  def destroy
    @book = current_user.books.find_by_id(params[:id])

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
    params.require(:book).permit(:title, :author, :publisher, :published_date, :description, :page_count, :category, :small_thumbnail, :thumbnail, :isbn10, :isbn13, :price, :condition, :notes)
  end
end
