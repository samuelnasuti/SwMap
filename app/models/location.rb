class Location < ActiveRecord::Base
  attr_accessible :address, :brand, :latitude, :longitude, :sales, :salesnumber

  reverse_geocoded_by :latitude, :longitude,
  :address => :address
   #after_initialize :reverse_geocode 

end
