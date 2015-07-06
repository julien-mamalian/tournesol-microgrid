class ProfilesController < ApplicationController
  skip_before_action :authenticate_user!
  skip_after_action :verify_authorized

  def show
    @user = User.find(params[:id])
  end
end
