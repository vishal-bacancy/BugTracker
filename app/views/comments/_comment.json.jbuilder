
# frozen_string_literal: true

json.extract! comment, :id, :description, :user_id, :ticket_id, :created_at, :updated_at

json.url comment_url(comment, format: :json)
