class ProfilesController < ApplicationController
  skip_before_action :authenticate_user!

  skip_after_action :verify_authorized
  skip_after_action :verify_policy_scoped

  def index
    @users = User.where.not(latitude: nil, longitude: nil)

    @markers = Gmaps4rails.build_markers(@users) do |user, marker|
      marker.lat user.latitude
      marker.lng user.longitude
    end
  end

  def show
    @user = User.find(params[:id])
  end
end
