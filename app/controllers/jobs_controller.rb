class JobsController < ApplicationController

  def new
    @jobs = Job.all
  end

end
