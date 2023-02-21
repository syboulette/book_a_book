class RentalsController < ApplicationController
  def index
    @rentals = Rental.all
  end

  def show
    set_rental
  end

private

def set_rental
  @rental = Rental.find(params[:id])
end

end
