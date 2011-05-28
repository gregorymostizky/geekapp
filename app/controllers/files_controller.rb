class FilesController < ApplicationController
  def index
    puts 'hahah'
    @files = UserFile.all(:conditions => {:user_id => current_user })
  end

  def create
    puts 'increate'
    Rails.logger.info {current_user.inspect}
    @file = UserFile.create( :file => params[:file], :user => current_user )
    @files = [@file]
    Rails.logger.info {current_user.inspect}
    render "index"
  end
end
