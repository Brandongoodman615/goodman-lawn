class JobsController < ApplicationController

  def new
    @job = Job.new
    @jobs = Job.all
  end

  def create
    @job = Job.create(job_params)
    if @job.valid?
      redirect_to @job
    else 
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @job = Job.find(params[:id])
  end

  private

  def job_params
    params.require(:job).permit(:name, :address, :email)
  end

end
