json.array! @messages do |mes|
  json.extract! mes, :id, :text
end
