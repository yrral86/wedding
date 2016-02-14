initializeRsvpPage = () ->
  contentArea = $('#content')
  $.get("/rsvps/new", (response) ->
    contentArea.append(response)
    $.get("/song_requests/new", (response) ->
      contentArea.append(response)
    )
  )

showRsvp = (id) ->
  $.get("/rsvps/" + id, (response) ->
    $('#rsvp_box').replaceWith(response)
  )

appendSongRequest = (id) ->
  $.get("/song_requests/" + id, (response) ->
    $('#content').append(response)
    $('#song_request_value').val('')
  )

window.rsvp_page = () -> initializeRsvpPage()
window.show_rsvp = (id) -> showRsvp(id)
window.append_song_request = (id) -> appendSongRequest(id)