class JobsController < ApplicationController
require_relative '../job_service.rb'

  def index
    info_that_I_need = JobService.get_info
    info_that_I_need.each do |hash|
      Craigslist.create!(hash)
    end
    @jobs = Craigslist.all
  end



end
