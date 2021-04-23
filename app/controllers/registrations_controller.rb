class RegistrationsController < ApplicationController
  def new
    #@ called instance variables - helps to be visible in our views
    @user = User.new
  end
end