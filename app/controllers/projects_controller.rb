class ProjectsController < ApplicationController

  def index
    @projects = Project.all
    @project = Project.new
  end

  def show
    @project = Project.find(params[:id])
  end

  def new
    @project = Project.new
  end

  def edit
    @project = Project.find(params[:id])
  end

  def create
    @project = Project.new(project_params)

    respond_to do |format|
      if @project.save
        format.html {redirect_to @project, notice: 'Project was successfully created.'}
        format.js
      else
        format.html {render :new}
        format.js
      end
    end
  end

  def update
    @project = Project.find(params[:id])

    respond_to do |format|
      if @project.update(project_params)
        format.html {redirect_to @project, notice: 'Project was successfully updated.'}
        format.js
      else
        format.html {render :edit}
        format.js
      end
    end
  end

  def destroy
    @project = Project.find(params[:id])
    @project.destroy
    respond_to do |format|
        format.html {redirect_to @project, notice: 'Project was successfully destroyed.'}
        format.js
    end
  end

  private
  def project_params
    params.require(:project).permit(:title, :description, :start_date)
  end
end
