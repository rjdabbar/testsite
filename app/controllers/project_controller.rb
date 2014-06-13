class ProjectController < ApplicationController
  def index
  end

  def show
    @project = Project.find_by_title(params[:title].titleize)
  end

  def edit
  end

  def create
  end

  def new
  end

  def delete
  end
end
