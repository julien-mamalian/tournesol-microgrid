class HomeController < ApplicationController
  skip_after_action :verify_policy_scoped

  def index
    @users = User.all

    @markers = Gmaps4rails.build_markers(@users) do |user, marker|
      marker.lat user.latitude
      marker.lng user.longitude
    end
  end

end
