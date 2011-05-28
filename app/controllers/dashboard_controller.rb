class DashboardController < ApplicationController
  def index
    @papers = Paper.all(:conditions => {:user_id => current_user})
  end
end