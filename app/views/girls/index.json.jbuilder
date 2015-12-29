json.array! @girls do |girl|
  json.extract! girl, :name, :spirit, :is_couple, :dependence
end
