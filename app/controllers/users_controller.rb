class UsersController < ApplicationController


def index

end

def show
  @user = User.find(params[:id])
  render json: @user
end

def create
  @user = User.new(user_params)
  if @user.save
    flash[:success] = "Welcome to the SVSP training log"
    render json: flash[:success]
  end
end

  private
  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation, :username)
  end
end
