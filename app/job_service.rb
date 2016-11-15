
class JobService
  require 'httparty'
  require 'nokogiri'

  def self.get_info
    url = HTTParty.get("https://miami.craigslist.org/search/sof")
    result = Nokogiri::HTML(url.body)
    array = []
    sections = result.css("p.result-info")
    sections.each do |section|
      date = section.css("time.result-date").map(&:content).first
      title = section.css("a.hdrlnk").map(&:content).first
      array.push({job_title: title, date: date})
    end
  end
end


result = JobService.get_info

puts result
