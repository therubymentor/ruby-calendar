$(document).ready ->
  $(".day.today, .day.future").on "click", ->
    $("#event_ocurrs_on").val($(this).data("date"))
    $("#new_event_modal").modal('show')
