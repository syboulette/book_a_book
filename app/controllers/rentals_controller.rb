class RentalsController < ApplicationController
  before_action :set_rental, only: [:show, :edit, :update, :destroy]

  def index
    @rentals = Rental.where(user_id: current_user.id)
  end

  def show
  end

  def create
    @rental = Rental.new(rental_params)
    @rental.user = current_user
    if @rental.save
      redirect_to rental_path(@rental)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @rental.destroy
    redirect_to root_path, status: :see_other, notice: "The rental has been deleted!"
  end

  private

  def set_rental
    @rental = Rental.find(params[:id])
  end
end
