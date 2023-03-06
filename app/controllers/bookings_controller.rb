class BookingsController < ApplicationController
  before_action :set_offer, only: [:new, :create]

  def index
    @bookings = Booking.all
  end


  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.offer_id = @offer.id
    days = (@booking.end_date - @booking.start_date).to_i
    @booking.price_total = days * @offer.price
    if @booking.save
      redirect_to offer_path(@offer)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.user = current_user
    @booking.destroy
    redirect_to offers_path(@booking.offer), status: :see_other
  end

  private

  def set_offer
    @offer = Offer.find(params[:offer_id])
  end

  def booking_params
    params.require(:booking).permit(:user_id, :offer_id, :start_date, :end_date)
  end
end
