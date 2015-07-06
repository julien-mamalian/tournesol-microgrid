class AccountsController < ApplicationController
  skip_after_action :verify_authorized

  before_action :set_user

  def show
  end

  def edit

  end

  def update
    @user.update(user_params)
    redirect_to account_path
  end

  def right_request
    @user.requested_rights = "Pending"
    @user.save

    flash[:notice] = "Your request has been sent !"
    redirect_to account_path
  end

  private

  def user_params
    params.require(:user).permit(:name, :avatar, :first_name, :last_name, :entreprise, :function, :city, :picture, :latitude, :longitude)
  end


  def set_user
    @user = current_user
  end
end

