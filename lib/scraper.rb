require 'nokogiri'
require 'open-uri'

require_relative './course.rb'

class Scraper
  
  # The #get_page instance method will be responsible for using Nokogiri and open-uri to grab the entire HTML document from the web page.
 
  def get_page
    doc = Nokogiri::HTML(open(""))
  end
  
  # The #get_courses instance method will be responsible for using a CSS selector to grab all of the HTML elements that contain a course. In other words, the return value of this method should be a collection of Nokogiri XML elements, each of which describes a course offering. We're going to have to examine the page with the element inspector to find the CSS selector that contains the courses.
 
  def get_courses
    
  end
  
  # The #make_courses method will be responsible for actually instantiating Course objects and giving each course object the correct title, schedule and description attribute that we scraped from the page.
  
  def make_courses
    
  end
  
  
  def print_courses
    self.make_courses
    Course.all.each do |course|
      if course.title && course.title != ""
        puts "Title: #{course.title}"
        puts "  Schedule: #{course.schedule}"
        puts "  Description: #{course.description}"
      end
    end
  end
  
end



