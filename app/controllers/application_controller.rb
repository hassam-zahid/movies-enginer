require 'json'
require 'open-uri'
require 'net/http'
class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  


  def save_location_logs
  	Thread.new do
      if !user_signed_in?
        uri = URI('http://ip-api.com/json/'+request.remote_ip)
        data = Net::HTTP.get(uri)
        data = JSON.parse(data) 
  		  city 	= data["city"]
  		  country = data["country"]
  		  country_object = Country.find_or_create_by(:name => country)
  		  city_object    = country_object.cities.find_or_create_by(:name => city)
  		  UserLocation.create(:city_id => city_object.id, :ip_address => request.remote_ip, :url => request.original_url)
      end 
	end 
  end 
end






