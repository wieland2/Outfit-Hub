class BookingsController < ApplicationController
  before_action :set_offer, only: [:show, :new, :create]

  def index
    @bookings = Booking.all
  end


  def show
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.offer_id = @offer.id
    if @booking.save
      redirect_to offer_path(@offer)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def set_offer
    @offer = Offer.find(paramms[:offer_id])
  end

  def booking_params
    params.require(:booking).permit(:user_id)
  end
end
