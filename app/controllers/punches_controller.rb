class PunchesController < ApplicationController
  def create
    @project = Project.find(params[:project_id])
    @punch = @project.punches.create(punch_params)
    redirect_to project_path(@project)
  end

  def update
    console.lop(params)

  end

  def destroy
    @project = Project.find(params[:project_id])
    @punch = @project.punches.find(params[:id])
    @punch.destroy
    redirect_to project_path(@project)
  end

  private
  def punch_params
    params.require(:punch).permit(:planned, :accomplished, :start_time, :end_time)
  end
end
