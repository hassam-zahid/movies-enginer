class City < ApplicationRecord
  belongs_to :country
  has_many   :user_locations
end
