class Admin::UsersController < Admin::AdminsController

  def index
    @user = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.avatar = params[:file]

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