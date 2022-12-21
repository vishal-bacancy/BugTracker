json.extract! ticket, :id, :title, :description, :current_state, :current_release_milestone, :created_at, :updated_at
json.url ticket_url(ticket, format: :json)
