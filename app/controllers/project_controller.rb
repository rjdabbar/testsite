class ProjectController < ApplicationController
  def index
     @projects = Project.get_ordered_list

  end

  def show
    
    @project = Project.find(params[:id])
    @projects = Project.all
  end

  def edit

    if admin_signed_in? 
      @project = Project.find(params[:id])

    else
      redirect_to controller: :home, action: :index, :notice => "You must be logged in to edit a project"
   end
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

    if admin_signed_in? 
      @project = Project.new

    else
      redirect_to controller: :home, action: :index, :notice => "You must be logged in to create a project"

    end
  end

  def delete
  end
end
