json.array!(@action_types) do |action_type|
  json.extract! action_type, :id, :name
  json.url action_type_url(action_type, format: :json)
end
