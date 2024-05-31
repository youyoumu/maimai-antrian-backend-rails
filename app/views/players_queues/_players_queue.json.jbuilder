json.extract! players_queue, :id, :players, :user_id, :room_id, :created_at, :updated_at
json.url players_queue_url(players_queue, format: :json)
