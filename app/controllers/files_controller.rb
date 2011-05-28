class FilesController < ApplicationController
  def index
    @files = UserFile.all(:conditions => {:user_id => current_user })
  end

  def create
    p current_user
    @file = UserFile.create( :file => params[:file], :user => current_user )
    @files = [@file]
    p current_user
    render "index"
  end
end
