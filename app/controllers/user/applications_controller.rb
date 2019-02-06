class User::ApplicationsController < ApplicationController
  def create
    if current_user.applications.create(job_id: params[:job_id])
      flash[:success] = "Job successfully applied to"
    else
      flash[:alert] = "Error occurred"
    end
    redirect_to root_path
  end
end
