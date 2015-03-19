json.campaign @campaigns do |c|
  json.id c.id
  json.comment c.budget
  json.type c.campaign_type  
end


json.bookings @bookings do |b|
  json.id b.id
  json.comment b.comment
  json.comment b.comment
  
end
