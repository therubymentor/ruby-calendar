require 'calendar'

class CalendarsController < ApplicationController
  def show
    @calendar = Calendar.new.to_a
  end
end
