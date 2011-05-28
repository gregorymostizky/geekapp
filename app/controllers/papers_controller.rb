class PapersController < ApplicationController
  def index

  end

  def new
    @paper = Paper.new(:user => current_user)
  end

  def create
    @paper = Paper.new(params[:paper])
    @paper.user = current_user
    @paper.save
    redirect_to :controller => :dashboard, :action => :index
  end
end
