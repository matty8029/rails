json.extract! youtube_url, :id, :name, :url, :created_at, :updated_at
json.url youtube_url_url(youtube_url, format: :json)
