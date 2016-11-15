class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception


    require 'httparty'
    require 'nokogiri'

    def job_titles
      url = HTTParty.get("https://miami.craigslist.org/search/sof")
      page_select = Nokogiri::HTML(url.body)
      page_select = page_select.css("a.hdrlnk")
      software_jobs = page_select.map(&:content)
    end

    def dates
      url = HTTParty.get("https://miami.craigslist.org/search/sof")
       page_select = Nokogiri::HTML(url.body)
       page_select = page_select.css(".result-date")
       software_jobs = page_select.map(&:children)
    end

    helper_method :job_titles , :dates

end
