class RequestServiceController < ApplicationController

  def new
    @jobs = Job.all
  end



end
