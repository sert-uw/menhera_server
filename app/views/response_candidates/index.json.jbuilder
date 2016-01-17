json.array! @candidates do |can|
  json.extract! can, :id, :short_text, :text
end
