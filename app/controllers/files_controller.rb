class FilesController < ApplicationController
  def index
    @files = UserFile.all
  end

  def create
    @file = UserFile.create( :file => params[:file], :user => User.first )
  end
end
