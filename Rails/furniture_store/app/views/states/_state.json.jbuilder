json.extract! state, :id, :name, :capital, :population, :area, :created_at, :updated_at
json.url state_url(state, format: :json)