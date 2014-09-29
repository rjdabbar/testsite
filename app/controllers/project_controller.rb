class ProjectController < ApplicationController
  def index
     @projects = Project.get_ordered_list

  end

  def show
    @project = Project.find_by_url(params[:url])
    @projects = Project.get_ordered_list

  end

  def edit

    if admin_signed_in? 
       @project = Project.find_by_url(params[:url])
    else
      redirect_to controller: :home, action: :index, :notice => "You must be logged in to edit a project"
    end
 end

 def update

    @project = Project.edit_vars(params[:id], params[:project])

   if @project.save!
      redirect_to controller: :home, action: :index, notice: "Project Updated"
   else
      render action: :edit
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

  def destroy 
    @project = Project.find_by_url(params[:url])

    if @project.delete
      redirect_to controller: :home, action: :index, notice: "Project Deleted"
   else
      redirect_to controller: :home, action: :index, notice: "Project could not be deleted"
   end
    
  end
end



