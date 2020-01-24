json.extract! prospect, :id, :company_name, :position_name, :recruiter_name, :stage_name, :note, :created_at, :updated_at
json.url prospect_url(prospect, format: :json)
