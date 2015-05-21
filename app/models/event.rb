class Event < ActiveRecord::Base

  scope :for_date, ->(date) {
    where(ocurrs_on: date)
  }
end
