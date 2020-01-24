json.extract! stage_event, :id, :prospect_id, :stage_name, :created_at, :updated_at
json.url stage_event_url(stage_event, format: :json)
