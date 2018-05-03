class AdminController < ApplicationController
	before_action :authenticate_user!
  def index
  	if current_user.email == "hssmmalik@gmail.com"
  		#@user_location = UserLocation.order('id DESC').map{ |location| {:id => location.id, :ip_address => location.ip_address, :url => location.url, :country => location.city.country.name, :city => location.city.name, :time => location.created_at }}
  		@hsh_data = Hash.new 
		data = UserLocation.where("created_at >= ?", Time.zone.now.beginning_of_day)
		data.each do |ul|
			if @hsh_data.key?(ul.city.country.name)
				@hsh_data[ul.city.country.name] = @hsh_data[ul.city.country.name] + 1 
			else
				@hsh_data[ul.city.country.name] = 1 
			end 
		end 
		@hsh_data =Hash[@hsh_data.sort_by{|k, v| v}.reverse]
  	else
  		redirect_to root_path  
  	end 
  end
end
