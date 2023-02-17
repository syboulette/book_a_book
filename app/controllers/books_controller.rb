class BooksController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    @book = Book.all
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      redirect_to books_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    set_book
  end

  def edit
    set_book
  end

  def update
    set_book
    if @book.update(book_params)
      redirect_to books_path(@book)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    set_book
    @book.destroy
    redirect_to books_path, status: :see_other
  end

  private

  def book_params
    params.require(:book).permit(:title, :author, :genre, :date_of_publication, :daily_price, :language)
  end

  def set_book
    @book = Book.find(params[:id])
  end
end
