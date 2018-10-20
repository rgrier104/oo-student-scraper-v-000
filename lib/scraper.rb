require 'open-uri'
require 'nokogiri'
require 'pry'

class Scraper

  def self.scrape_index_page(index_url)
    doc = Nokogiri::HTML(open(index_url))
    students = []
    doc.css(".student-card").each do |student|
      student_info = {}
      student_info[:name] = student.css("h4").text
      students_info[:location] = student.css("p").text
      students_info[:profile_url] = student.css("a").attribute("href").value
      students << student_info
    end
    students
  end

  def self.scrape_profile_page(profile_url)

  end

end


#name = doc.css(".student-card").first.css("h4").text
#location = doc.css(".student-card").first.css("p").text
#url = doc.css(".student-card").first.css("a").attribute("href").value
