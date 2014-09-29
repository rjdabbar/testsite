class ProjectController < ApplicationController
  def index
     @projects = Project.get_ordered_list

  end

  def show
    #@project = Project.find(params[:id])
    @project = Project.find_by_url(params[:url])
    @projects = Project.get_ordered_list

  end

  def edit

    if admin_signed_in? 
      #@project = Project.find(params[:id])
      
       @project = Project.find_by_url(params[:url])


    else
      redirect_to controller: :home, action: :index, :notice => "You must be logged in to edit a project"
   end
 end

 def update

    # @project = Project.update_project_information_from(params[:project], params[:id])

 #  if( (@project = Project.find_by_title(params[:project][:title]) ) == nil)
    
   # project_id = project_from_title[:id]
  #  hash = params[:project]

    @project = Project.edit_vars(params[:id], params[:project])

   # if @project.save
      redirect_to controller: :home, action: :index, notice: "Project Updated"
    #else
    #  render action: :edit
    #end


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
    project = Project.find_by_url(params[:url])
    project_id = project[:id]
    delete_project_id(project_id)
  raise   
  end
end



