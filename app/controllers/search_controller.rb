class SearchController < ApplicationController
	
	def search_results_for_a_keyword
		keyword = params[:keyword]
		@movies_names = Movie.where("name LIKE ?", "%#{keyword}%").limit(10).map{|movie|  movie.name }
		#@movies_names = Movie.search(keyword).first(10).map{|movie|  movie.name } 
		render formats: :js
	end 

	def get_movies_listing_by_query(query_string)
		movies_names = Movie.where("name LIKE ?", "%#{query_string}%").limit(15).map{|movie|  {:name => movie.name, :url => movie.movie_url, :image => movie.image_url } }
		#movies_names = Movie.search(query_string).first(10).map{|movie|  {:name => movie.name, :url => movie.movie_url, :image => movie.image_url } }
		movies_names = movies_names + Movie.last(3).map{ |movie|  {:name => movie.name, :url => movie.movie_url, :image => movie.image_url } } if movies_names.count > 0 
	end 

end
