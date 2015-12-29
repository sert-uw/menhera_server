json.array! @candidates do |can|
  json.extract! can, :id, :text
end
