class BooksController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_book, only: [:show, :edit, :update, :destroy]

  def index
    @books = policy_scope(Book).all
    @markers = @books.geocoded.map do |book|
      {
        lat: book.latitude,
        lng: book.longitude,
        info_window_html: render_to_string(partial: "info_window", locals: {book: book}),
        marker_html: render_to_string(partial: "marker", locals: {book: book})
      }
    end

    if params[:query].present?
      @books = Book.book_search(params[:query])
    else
      @books = Book.all
    end
  end

  def new
    @book = Book.new
    authorize @book
  end

  def create
    @book = Book.new(book_params)
    @book.user = current_user

    authorize @book

    if @book.save
      redirect_to book_path(@book)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    authorize @book
  end

  def edit
    authorize @book
  end

  def update
    authorize @book

    if @book.update(book_params)
      redirect_to book_path(@book)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    authorize @book

    @book.destroy
    redirect_to root_path, status: :see_other, notice: "The book has been deleted!"
  end

  private

  def book_params
    params.require(:book).permit(:title, :author, :genre, :date_of_publication, :daily_price, :language, :description, :address, :cover)
  end

  def set_book
    @book = Book.find(params[:id])
  end
end
