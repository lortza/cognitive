json.array!(@healthy_thought_types) do |healthy_thought_type|
  json.extract! healthy_thought_type, :id, :name, :explanation, :example
  json.url healthy_thought_type_url(healthy_thought_type, format: :json)
end
