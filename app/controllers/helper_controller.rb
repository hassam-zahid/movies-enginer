require 'nokogiri'
require 'open-uri'
class HelperController < ApplicationController

	def raw_data(url,is_done,site_id)
		add_raw_data_to_db(url,is_done,site_id)
	end 

	def add_raw_data_to_db(url,is_done,site_id)
		if !Page.exists?(:site_id=>site_id, :url => url)
			raw_data = raw_data_generator(url)
			Page.create(:url      => url, 
						:raw_data => raw_data,
					    :is_done  => is_done, 
					    :site_id  => site_id)
			puts url
		end 
	end 

	def add_movies_hashArray_to_database(hashArray,site_id) #this function will get an hash array of movies data and then insert it into database
		hashArray.each do |hsh|
			movie_name 		= hsh[:movie_name]
			movie_url       = hsh[:movie_url]
			movie_image_url = hsh[:movie_image_url]
			if !Movie.exists?(:name => movie_name, :movie_url => movie_url, :site_id => site_id)
				Movie.create(:name => movie_name, :movie_url => movie_url, :image_url => movie_image_url, :site_id => site_id, :is_active => true)
			end 
		end 
	end 

	def raw_data_generator(url)
		doc = Nokogiri::HTML(open(url))
	end 

	def latest_page_fetch_and_insert_inti_db(url,is_done,site_id)
		raw_data = raw_data_generator(url)
			pg = Page.create(:url      => url, 
						:raw_data => raw_data,
					    :is_done  => is_done, 
					    :site_id  => site_id)
			puts url
		return pg.id
	end 

end
