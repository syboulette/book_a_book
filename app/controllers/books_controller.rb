class BooksController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    @book = Book.all
  end

  def new
    @book = Book.new
  end

  def show
  end

  def edit
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      redirect_to books_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def book_params
    params.require(:book).permit(:title, :author, :genre, :date_of_publication, :daily_price, :language)
  end
end
