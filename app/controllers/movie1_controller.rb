require 'nokogiri'
require 'open-uri'
class Movie1Controller < ApplicationController
	def index 
		add_raw_data #1st step (add raw data for complete site)\
		fetch_and_insert_data_for_complete_site #2nd step to get data from database and scrap it ti get movies data 
		#get_latest_movies
		#return get_movies_from_raw_data[2]
	end 

	def get_latest_movies
		obj      = HelperController.new 
		site_url = 'https://1movies.online'
		site_id  = Site.find_by_url(site_url).id
		page_id  = obj.latest_page_fetch_and_insert_inti_db(site_url,false,site_id)
		page     = Page.find(page_id)
		movies_info_hashArray = get_movies_information_from_raw_data(page.raw_data)
		obj.add_movies_hashArray_to_database(movies_info_hashArray,site_id)
	end 

	def add_raw_data 
		obj= HelperController.new 
		site_url = 'https://1movies.online'
		site_id = Site.find_by_url(site_url).id
		#puts page_urls #for testing (comment it in production)
		#puts obj.raw_data_generator(page_urls.first) #for testing (comment it in production)
		page_urls.each do |url|
			 obj.raw_data(url,false,site_id) #that function will fetch raw data and insert to database
		end
	end 


	def page_urls
		site_url = 'https://1movies.online'
		site_id = Site.find_by_url(site_url).id
		total_pages = 597
		url_array = Array.new 
		for i in 1..total_pages
			url_array << site_url + '/all-movies/'+i.to_s+'/23'
		end 
		return url_array
	end 

	def fetch_and_insert_data_for_complete_site #fetch data from database and scrap the data then add it to database
		site_url = 'https://1movies.online'
		site_id  = Site.find_by_url(site_url).id
		pages    = Site.find_by_url(site_url).pages
		obj      = HelperController.new 
		movies_info_hashArray = get_movies_information_from_raw_data(pages.first.raw_data) #for testing (comment it in production)
		pages.each do |page|
			movies_info_hashArray = get_movies_information_from_raw_data(page.raw_data)
			obj.add_movies_hashArray_to_database(movies_info_hashArray,site_id)
		end 
	end

	def get_movies_information_from_raw_data(raw_data)
		movie_divs =  get_movie_divs_from_raw_data(raw_data)
		movies_data = Array.new 
		#movies_data << get_movie_information_from_a_div(movie_divs.first)#for testing (comment it in production)
		
		movie_divs.each do |single_div|
			if  !single_div.to_s.include? "onclick"
				movies_data << get_movie_information_from_a_div(single_div)
			end 
		end 
		return movies_data
	end 

	def get_movie_divs_from_raw_data(doc) #that function will only returns the total movie divs on a single page 
		doc = Nokogiri::HTML(doc)
		doc = doc.css('.container').css('#content').css('.offers').css('.flex_offers').css('.offer_box')
	end 


	def get_movie_information_from_a_div(movie_div) #that function will return hash of a single movies data
		
	    movie_data = Hash.new
	   		movie_data[:movie_name]      =  movie_div.css('h3')[0].text
        	movie_data[:movie_url]       = 'https://1movies.online'+movie_div.css('a')[0]['href']
        	movie_data[:movie_image_url] =  movie_div.css('.poster')[0]['data-img']
       	
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
