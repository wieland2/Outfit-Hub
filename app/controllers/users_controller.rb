class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @offers = @user.offers
    authorize @user
  end
end
