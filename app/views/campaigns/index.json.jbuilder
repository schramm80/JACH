json.campaigns @campaigns do |c|
  json.id c.id
  json.comment c.budget
  json.type c.campaign_type  
end
