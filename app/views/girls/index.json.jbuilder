json.array! @girls do |girl|
  json.extract! girl, :id, :name, :spirit, :is_couple, :dependence
end
