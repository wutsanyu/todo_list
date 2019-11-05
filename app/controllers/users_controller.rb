class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params) 
    if @ticket.save
      redirect_to users_path, notice: "會員註冊成功！"
    else
      render :new
    end
  end


  private
  def user_params
    params.require(:user).permit(:user_name, :user_mail, :password, :password_confirm)
  end



end
