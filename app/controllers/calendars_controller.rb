require 'calendar'

class CalendarsController < ApplicationController
  layout "calendar"

  def show
    calendar
  end

private

  def calendar
    @calendar ||= Calendar::Builder.new(events: events).to_a
  end

  def calendar_month
    @calendar_month ||= Calendar::Month.new(Date.today)
  end

  def events
    @events ||= Event.where("ocurrs_on BETWEEN ? AND ?",
                            calendar_month.first_calendar_day,
                            calendar_month.last_calendar_day)
  end
end
