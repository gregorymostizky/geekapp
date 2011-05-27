class MainController < ApplicationController
  def index
    @user = User.first
  end
end
