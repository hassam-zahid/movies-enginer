require 'nokogiri'
require 'open-uri'
class WatchengController < ApplicationController
	def index 
		#add_raw_data #1st step (add raw data for complete site)\
		#fetch_and_insert_data_for_complete_site #2nd step to get data from database and scrap it ti get movies data 
		#get_latest_movies
		#return get_movies_from_raw_data[2]
	end 

	def get_latest_movies
		obj      = HelperController.new 
		site_url = 'https://watcheng.com'
		site_id  = Site.find_by_url(site_url).id
		page_id  = obj.latest_page_fetch_and_insert_inti_db(site_url,false,site_id)
		page     = Page.find(page_id)
		movies_info_hashArray = get_movies_information_from_raw_data(page.raw_data)
		obj.add_movies_hashArray_to_database(movies_info_hashArray,site_id)
	end 

	def add_raw_data 
		obj= HelperController.new 
		site_url = 'https://watcheng.com'
		if Site.find_by_url(site_url).pages.count == 0
			site_id = Site.find_by_url(site_url).id
	    	obj.raw_data("https://watcheng.com/en/movies/",false,site_id) #that function will fetch raw data and insert to database
		end 
	end 

	def fetch_and_insert_data_for_complete_site #fetch data from database and scrap the data then add it to database
		site_url = 'https://watcheng.com'
		site_id  = Site.find_by_url(site_url).id
		pages    = Site.find_by_url(site_url).pages
		obj      = HelperController.new
		movies_info_hashArray = get_movies_information_from_raw_data(pages.first.raw_data) #for testing (comment it in production)
		#pages.each do |page|
		#	movies_info_hashArray = get_movies_information_from_raw_data(page.raw_data)
			obj.add_movies_hashArray_to_database(movies_info_hashArray,site_id)
		#end 
	end

	def get_movies_information_from_raw_data(raw_data)
		movie_divs =  get_movie_divs_from_raw_data(raw_data)
		movies_data = Array.new 
		#movies_data << get_movie_information_from_a_div(movie_divs.first)#for testing (comment it in production)
		
		movie_divs.each do |single_div|
				movies_data << get_movie_information_from_a_div(single_div)
		end 
		return movies_data
	end 

	def get_movie_divs_from_raw_data(doc) #that function will only returns the total movie divs on a single page 
		doc = Nokogiri::HTML(doc)
		doc =  doc.css('.snippet-list').css('a')
	end 


	def get_movie_information_from_a_div(movie_div) #that function will return hash of a single movies data
		
	    movie_data = Hash.new
	   		movie_data[:movie_name]      =  movie_div['title']
        	movie_data[:movie_url]       = 'https://watcheng.com'+movie_div['href']
        	movie_data[:movie_image_url] =  movie_div.css('img')[0]['src']
       	
        return movie_data

	end 

	def get_movies_from_raw_data
		data = Page.find(5).raw_data
		data = Nokogiri::HTML(data)
		data = data.css('#content').css('.postbox').map { |dd| {  
													:url   => dd.css('a')[0]['href'],
													:name  => dd.css('a')[0]['title'],
													:image => dd.css('a')[1].css('img')[0]['src']	 } }
	end 
end
