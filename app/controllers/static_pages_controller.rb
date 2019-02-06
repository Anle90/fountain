class StaticPagesController < ApplicationController
  def home
    if user_signed_in?
      if current_user.class == Employer
        @jobs = Job.where(employer_id: current_user.id).joins(:applications).distinct
      else
        @jobs = Job.left_outer_joins(:applications).where("applications.user_id != ?", current_user.id)
        @jobs_applied = Job.joins(:applications).where(applications: {user_id: current_user.id})
      end
    end
  end
end
