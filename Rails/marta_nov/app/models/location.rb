class Location < ActiveRecord::Base

geocoded_by :my_location
after_validation :geocode



def my_location
	"#{address}, #{city}, GA"
end	

end
