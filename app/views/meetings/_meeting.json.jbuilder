json.extract! meeting, :id, :name, :start_date, :end_date, :duration, :overtime, :created_at, :updated_at
json.url meeting_url(meeting, format: :json)
