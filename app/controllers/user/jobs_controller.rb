class User::JobsController < ApplicationController
  before_action :load_user
  def create
    if @user.jobs.create(job_params)
      flash[:success] = "Job created successfully"
      redirect_to root_path
    else
      flash[:alert] = "Error Occurred"
      redirect_to root_path
    end
  end

  private

  def job_params
    params.require(:job).permit(:title, :description)
  end

  def load_user
    @user = User.find(params[:user_id])
  end
end
