class SubmissionsController < ApplicationController
  def new
  end

  def create
    submission = Submission.new
    submission.assign_attributes(submission_attributes)

    if submission.save
      redirect_to submitted_path
    else
      flash[:error] = "Something didn't work there"
      redirect_to root_path
    end
  end

  def submitted

  end

  private

  def submission_attributes
    params.require(:submission).permit(
      :file
    )
  end
end
