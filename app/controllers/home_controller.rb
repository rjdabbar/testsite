class HomeController < ApplicationController
  def index
    @projects = Project.all
  end

  def about
  	# stuff
  end

end
