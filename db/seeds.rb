if Rails.env.development?
  date = Date.today

  ["Bobby's baseball game",
   "Meg's birthday",
   "Guitar practice",
   "Tennis practice",
   "Night at the museum",
   "Bad Poetry Night"].each do |name|
     ocurrs_on = (date.beginning_of_month.beginning_of_week..date.end_of_month.end_of_week).to_a.sample
      Event.create name: name, ocurrs_on: ocurrs_on
   end
end
