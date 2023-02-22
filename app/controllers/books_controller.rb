class BooksController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  before_action :set_book, only: [:show, :edit, :update, :destroy]

  def index
    @books = Book.all
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    @book.user = current_user
    if @book.save
      redirect_to book_path(@book)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
  end

  def edit
  end

  def update
    if @book.update(book_params)
      redirect_to book_path(@book)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @book.destroy
    redirect_to root_path, status: :see_other, notice: "The book has been deleted!"
  end

  private

  def book_params
    params.require(:book).permit(:title, :author, :genre, :date_of_publication, :daily_price, :language)
  end

  def set_book
    @book = Book.find(params[:id])
  end
end
