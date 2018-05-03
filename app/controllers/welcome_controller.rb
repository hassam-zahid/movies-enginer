class WelcomeController < ApplicationController
  before_action :save_location_logs, only: [:index,:deploy,:worker, :search]
  def index
  	 
  end

  def deploy
    system('git pull')
    system('bundle install')
    system('bundle exec rake db:migrate RAILS_ENV=production')
    system('bundle exec rake db:seed RAILS_ENV=production')
    system('RAILS_ENV=production bundle exec rake assets:precompile')
    system('sudo service nginx restart')
    redirect_to root_path
  end 

  def worker
  	
  		#obj_1 = WatchonlinemovieController.new 
  	  #@data =	obj_1.index
      #obj_2  = FmoviesController.new 
      #@data  = obj_2.index 
      #obj_3 = OnlinemoviescinemaController.new
      #@data = obj_3.index
      #obj_4 = M4ufreeController.new
      #@data = obj_4.index
      #obj_5 = Movie1Controller.new 
      #@data = obj_5.index 
      #obj_6  = Movie1seasonsController.new
      #@data  = obj_6.index
      #obj_7  = WatchengController.new
      #@data = obj_7.index
      #obj_8  = TvdaramspkController.new
      #@data  = obj_8.index
      obj_9  = FmoviesseasonsController.new 
      @data = obj_9.index 
         
  end 

  def latest_movies
      obj_1 = WatchonlinemovieController.new 
      @data =  obj_1.get_latest_movies
      obj_2  = FmoviesController.new 
      @data  = obj_2.get_latest_movies 
      #obj_3 = OnlinemoviescinemaController.new
      #@data = obj_3.index
      #obj_4 = M4ufreeController.new
      #@data = obj_4.index
      #obj_5 = Movie1Controller.new 
      #@data = obj_5.index 
      #obj_6  = Movie1seasonsController.new
      #@data  = obj_6.index
      #obj_7  = WatchengController.new
      #@data = obj_7.index
      #obj_8  = TvdaramspkController.new
      #@data  = obj_8.index
  end 

  def search 
    if !params[:movie_name].empty?
      movie_name = params[:movie_name]
      s_obj = SearchController.new
      @movie_name = movie_name
      @movies = s_obj.get_movies_listing_by_query(movie_name)
    end  
  end 


end
