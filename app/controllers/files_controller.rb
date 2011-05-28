class FilesController < ApplicationController
  def index
    @files = UserFile.all(:conditions => {:user_id => current_user })
  end

  def create
    Rails.logger.info {current_user.inspect}
    @file = UserFile.create( :file => params[:file], :user => current_user )
    @files = [@file]
    Rails.logger.info {current_user.inspect}
    render "index"
  rescue e
    Rails.logger.info {e.inspect}
  end
end
