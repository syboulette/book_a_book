class BooksController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    @books = Book.all
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(params[:book])
    @book.save
    redirect_to books_path
  end

  private

  def book_params
    params.require(:book).permit(:title, :author, :genre, :date_of_publication, :age_restriction, :daily_price, :language)
  end
end
