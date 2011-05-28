class FilesController < ApplicationController
  def index
    @files = PaperFile.all(:conditions => {:user_id => current_user })
  end

  def new
    @paper = Paper.find(params[:paper_id])
  end

  def create
    @file = PaperFile.create( params[:file] )
    redirect_to papers_url(params[:paper_id])
  end
end
