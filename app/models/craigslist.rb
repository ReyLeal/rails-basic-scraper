class Craigslist < ApplicationRecord
  def self.search_for_jobs_in_dc
    Craigslist.where(job_title: 'dc')
  end

end
