json.campaigns @campaigns do |c|
  json.id c.id
  json.name c.name
  json.status c.status
  json.budget c.budget
  json.starts_at c.starts_at
  json.ends_at c.ends_at
  json.brand c.brand
  json.description c.description
  json.created_at c.created_at
  json.updated_at c.updated_at
end
