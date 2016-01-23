json.array!(@rsvps) do |rsvp|
  json.extract! rsvp, :id, :attendees, :note, :attending
  json.url rsvp_url(rsvp, format: :json)
end
