class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.avatar = params[:file]

    # File.open("") do |f|
    #       @user.avatar = f
    # end
    if @user.update(user_params)
      render :'users/show'
    else
      render :'users/edit'
    end

  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :phone, :avatar)
  end
end