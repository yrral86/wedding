json.array!(@song_requests) do |song_request|
  json.extract! song_request, :id, :artist, :name, :requested_by
  json.url song_request_url(song_request, format: :json)
end
