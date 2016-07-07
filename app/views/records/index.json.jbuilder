json.array!(@records) do |record|
  json.extract! record, :id, :date, :event, :thought_about_event, :feeling_about_thought, :unhealthy_action, :unhealthy_thought_type_id, :healthy_thought_type_id, :reframe_statement, :healthy_action, :star
  json.url record_url(record, format: :json)
end
