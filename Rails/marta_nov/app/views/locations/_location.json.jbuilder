json.extract! location, :id, :address, :city, :latitude, :longitude, :created_at, :updated_at
json.url location_url(location, format: :json)