class AccountsController < ApplicationController
  before_action :set_user, only: [:edit, :update]
  skip_before_action :authenticate_user!, only: [:show]
  skip_after_action :verify_authorized


  def show
    @user = User.find(params[:id])
  end

  def edit

  end

  def update
    @user.update(user_params)
    redirect_to account_path
  end

  private

  def user_params
    params.require(:user).permit(:name, :avatar, :first_name, :last_name, :entreprise, :function, :city, :picture)
  end


  def set_user
    @user = current_user
  end
end
