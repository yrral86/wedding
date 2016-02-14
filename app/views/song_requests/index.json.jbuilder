json.array!(@song_requests) do |song_request|
  json.extract! song_request, :id, :request
  json.url song_request_url(song_request, format: :json)
end
