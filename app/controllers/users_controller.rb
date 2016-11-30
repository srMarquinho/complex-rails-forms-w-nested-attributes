class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def edit
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to @user
    else
      render action: 'new'
    end
  end

  def update
    @user = User.find(params[:id])

    if @user.update(params[:user])
      redirect_to @user
    else
      render action: 'edit'
    end
  end

  private

  def user_params
    params.require(:user).permit(users_attributes: [:address])
  end
end
