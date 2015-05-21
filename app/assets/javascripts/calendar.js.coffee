$(document).ready ->
  $(".day.today, .day.future").on "click", ->
    date = $(this).data("date")
    window.location.href="/events/new?date=#{date}"
