initializeRsvpPage = () ->
  contentArea = document.getElementById("content")
  $.get("/rsvps/new", (response) ->
    contentArea.innerHTML += response
    $.get("/song_requests/new", (response) ->
      contentArea.innerHTML += response
    )
  )

window.rsvp_page = () -> initializeRsvpPage()
