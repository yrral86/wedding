window.showPaypalLoading = () ->
  button = $("#paypal_button")
  button.hide()
  button.after("Loading...")
