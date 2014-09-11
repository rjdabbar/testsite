class ProjectController < ApplicationController
  def index
  end

  def show
    @project = Project.find_by_title(params[:title].titleize)
  end

  def edit
  end

  def create

    @project = Project.populate_project_information_from(params[:project])

    if @project.save
      redirect_to controller: :home, action: :index, notice: "Project created"
    else
      render action: :new
    end
  end

  def new
    @project = Project.new

    
  end

  def delete
  end
end
