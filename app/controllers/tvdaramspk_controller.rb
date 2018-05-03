require 'nokogiri'
require 'open-uri'
class TvdaramspkController < ApplicationController
	def index 
		add_raw_data #1st step (add raw data for complete site)\
		#fetch_and_insert_data_for_complete_site #2nd step to get data from database and scrap it ti get movies data 
		#get_latest_movies
		#return get_movies_from_raw_data[2]
	end 

	def add_raw_data 
		obj= HelperController.new 
		site_url = 'http://www.tv-dramas.pk'
		site_id = Site.find_by_url(site_url).id
		url = 'http://www.tv-dramas.pk/urdu1tv-dramas'
		data = obj.raw_data_generator(url)
		nx_url = get_next_page_url(data)
		movies_divs = get_movies_divs_from_a_page(data)
	    obj.add_movies_hashArray_to_database(movies_divs,site_id)
		
		for i in 1..32
			data = obj.raw_data_generator(nx_url)
			nx_url = get_next_page_url(data)
			movies_divs = get_movies_divs_from_a_page(data)
			obj.add_movies_hashArray_to_database(movies_divs,site_id)
		end 
	end 


	def get_next_page_url(data)
		url = data.css('.pagination').css('a').last['href'] 
	end 

	def get_movies_divs_from_a_page(data)
		data = data.css('.video-section').css('.responsive-height')
		all_movies_data = Array.new
		data.each do |dd|
			all_movies_data << get_movie_data_from_a_div(dd)
		end 
		return all_movies_data
	end 

	def get_movie_data_from_a_div(dd)#div_data
		movie_data = Hash.new
		page_url = dd.css('h3').css('a')[0]['href']
		puts page_url
		movie_data[:movie_name]      = dd.css('h3').css('a')[0]['title']
        movie_data[:movie_url]       = get_youtube_darama_link_from_site_link(page_url)
        movie_data[:movie_image_url] = 'http:'+dd.css('.item-img').css('img')[0]['src']
        
        return movie_data
	end 

	def get_youtube_darama_link_from_site_link(url)
		obj= HelperController.new 
		data = obj.raw_data_generator(url)
		if data.at_css('div.embed-responsive-16by9')
		   darama_url =  'http:'+data.css('.embed-responsive-16by9').css('iframe')[0]['src']
		else
			darama_url = url
		end 
		return darama_url
	end 

end


