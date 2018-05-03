class Site < ApplicationRecord
	has_many :pages
	has_many :movies
end
