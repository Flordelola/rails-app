class MainController < ApplicationController
  def index
    flash[:notice] = "logged in succesfully" #method
    flash[:alert] = "Invalid email or password" #method
  end
end