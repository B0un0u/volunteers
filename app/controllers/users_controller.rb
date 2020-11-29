class UsersController < ApplicationController

  
  def show
    @user = User.find(params[:id])
    @missions = @user.missions
    authorize @user
  end

  def new
    @user = User.new
    authorize @user
  end

  # def edit
  #   raise
  #   @user = current_user
  #   authorize @user
  # end

  def update 
    
    # current_user.fullname = users_params[:fullname]
    # current_user.city = users_params[:city]
    # current_user.description = users_params[:description]
    @user = User.find(params[:id])
    @user.update(users_params)
    authorize @user
    # current_user.photo.key = users_params[:photo].key
    # @user = current_user
    redirect_to user_path(@user)
  end

  private
  def users_params
    params.require(:user).permit(:fullname, :description, :city, :photo)
  end
end
