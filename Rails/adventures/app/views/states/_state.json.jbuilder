json.extract! state, :id, :name, :capitol, :population, :created_at, :updated_at
json.url state_url(state, format: :json)