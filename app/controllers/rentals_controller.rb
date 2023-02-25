class RentalsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_rental, only: [:show, :edit, :update, :destroy]

  def index
    @rentals = policy_scope(Rental)
    @rentals = Rental.where(user_id: current_user.id)
  end
  
  def new
    @rental = Rental.new
    @book = Book.find(params[:book_id])
    authorize @rental
  end

  def show
  end

  def create
    @rental = Rental.new(rental_params)
    authorize @rental
    @rental.user = current_user
    if @rental.save!
      redirect_to rental_path(@rental)
    else
      render :new, status: :unprocessable_entity
    end
  end



  def destroy
    @rental.destroy
    redirect_to root_path, status: :see_other, notice: "Your booking has been removed"
  end
  
  private

  def rental_params
    params.require(:rental).permit(:start_date, :end_date)
  end

  def set_rental
    @rental = Rental.find(params[:id])
  end
end
