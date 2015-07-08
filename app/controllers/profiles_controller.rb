class ProfilesController < ApplicationController
  skip_before_action :authenticate_user!
  skip_after_action :verify_authorized

  def show
    @user = User.find(params[:id])
  end

  def index
    @users = User.all
  end

  def follow
    @user= User.find(params[:id])
    current_user.follow(@user)
    @user.save
    redirect_to :back
  end

  def unfollow
  @user= User.find(params[:id])
  current_user.stop_following(@user)
  @user.save
  redirect_to :back
  end
end
