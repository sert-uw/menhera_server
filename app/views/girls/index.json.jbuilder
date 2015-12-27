json.array! @girls do |girl|
  json.id girl.id
  json.name girl.name
  json.is_couple girl.is_couple
  json.spirit girl.spirit
  json.dependent girl.dependent
end
