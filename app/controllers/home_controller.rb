class HomeController < ApplicationController
  def index
    @users = User.all if current_user&.admin?
  end
end
