class PapersController < ApplicationController
  def index

  end

  def new
    @paper = Paper.new(:user => current_user)
  end
end
