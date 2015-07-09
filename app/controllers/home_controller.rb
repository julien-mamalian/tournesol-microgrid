class HomeController < ApplicationController
  skip_after_action :verify_policy_scoped
  skip_before_action :authenticate_user!, unless: :pages_controller?
  def index

    @users = User.all
    @projects = Project.all

    @user_markers = Gmaps4rails.build_markers(@users) do |user, marker|
      marker.picture(
        url:    "http://chart.apis.google.com/chart?chst=d_map_pin_letter&chld=%E2%80%A2|ED1B1B",
        width:  "32",
        height: "32"
      )
      marker.lat user.latitude
      marker.lng user.longitude
    end

    @project_markers = Gmaps4rails.build_markers(@projects) do |project, marker|
      marker.picture(
        url:    "http://chart.apis.google.com/chart?chst=d_map_pin_letter&chld=%E2%80%A2|EFF42E",
        width:  "32",
        height: "32"
      )
      marker.lat project.latitude
      marker.lng project.longitude
    end

    @markers = @user_markers + @project_markers
  end
end

