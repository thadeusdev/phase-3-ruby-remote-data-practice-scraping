require 'nokogiri'
require 'open-uri'

html = open("https://flatironschool.com/")

doc = Nokogiri::HTML(html)
courses = doc.css(".card-body.card-pad-1g")

courses.each do |course|
    puts course.text.strip
end