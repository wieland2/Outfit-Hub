class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @offers = @user.offers
    authorize @user
  end

  def edit
    @user = User.find(params[:id])
    authorize @user
  end

  def update
    @user = User.find(params[:id])
    authorize @user
    if @user.update(user_params)
      redirect_to user_path(@user)
    else
      render :new, status: :unprocessable_entity
    end
  end
  private

  def user_params
    params.require(:user).permit(:username, :age, :city, :photo)
  end
end
