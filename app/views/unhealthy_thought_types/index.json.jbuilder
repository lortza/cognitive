json.array!(@unhealthy_thought_types) do |unhealthy_thought_type|
  json.extract! unhealthy_thought_type, :id, :name, :explanation, :example
  json.url unhealthy_thought_type_url(unhealthy_thought_type, format: :json)
end
