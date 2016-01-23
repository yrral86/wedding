json.array!(@guests) do |guest|
  json.extract! guest, :id, :name, :rsvp_id
  json.url guest_url(guest, format: :json)
end
