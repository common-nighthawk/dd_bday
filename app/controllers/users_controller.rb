class UsersController < ApplicationController
  def index
  end

  def all
    @users = User.all
  end

  def create
    @user = User.new(article_params)
    @user.save
    redirect_to users_all_path
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update_attributes(article_params)
    redirect_to users_all_path
  end

  private

  def article_params
    params.require(:user).permit(:name, :pref1, :pref2, :notes)
  end

end
