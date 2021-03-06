class Admin::UsersController < Admin::AdminsController
  def index
    @q = User.ransack(params[:q])
    @user = @q.result
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
      redirect_to :'admin/posts/index'
    else
      redirect_to :'admin/posts/edit'
    end
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :phone, :avatar)
  end
end
