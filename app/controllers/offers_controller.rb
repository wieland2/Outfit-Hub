class OffersController < ApplicationController
  before_action :set_offer, only: [:show, :edit, :update, :destroy]

  def index
    # @offers = Offer.all
    skip_authorization
    @offers = policy_scope(Offer)
  end

  def show
    authorize @offer
  end

  def new
    @offer = Offer.new
    authorize @offer
  end

  def create
    @offer = Offer.new(offer_params)
    @offer.user = current_user
    authorize @offer
    if @offer.save
      redirect_to offer_path(@offer)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    authorize @offer
  end

  def update
    authorize @offer
    if @offer.update(offer_params)
      redirect_to offer_path(@offer)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    authorize @offer
    @offer.user = current_user
    @offer.destroy
    redirect_to offers_path, status: :see_other
  end

  private

  def set_offer
    skip_authorization
    @offer = Offer.find(params[:id])
  end

  def offer_params
    skip_authorization
    params.require(:offer).permit(:title, :price, :description, :user_id, :size, :photo)
  end
end
