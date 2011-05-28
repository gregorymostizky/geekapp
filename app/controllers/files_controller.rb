class FilesController < ApplicationController
  def index
    @files = UserFile.all(:conditions => {:user_id => current_user })
  end

  def create
    @file = UserFile.create( :file => params[:file], :user => current_user )
    @files = [@file]
    render "index"
  end
end
