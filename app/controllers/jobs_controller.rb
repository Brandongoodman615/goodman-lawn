class JobsController < ApplicationController

  def new
    @job = Job.new
    @jobs = Job.all
  end

  def create
    Job.create(job_params)
    if @job.valid?
      redirect_to root_path
    else 
      render :new, status: :unprocessable_entity
    end
  end

  private

  def job_params
    params.require(:job).permit(:name, :address, :email)
  end

end
