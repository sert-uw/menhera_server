Message.seed do |m|
  m.id = 1
  m.from = Message::FROM[:girl]
  m.read = false
  m.user_girl_id = 1
  m.message_list_id = 1
end

Message.seed do |m|
  m.id = 2
  m.from = Message::FROM[:girl]
  m.read = false
  m.user_girl_id = 1
  m.message_list_id = 2
end

Message.seed do |m|
  m.id = 3
  m.from = Message::FROM[:girl]
  m.read = false
  m.user_girl_id = 1
  m.message_list_id = 3
end

Message.seed do |m|
  m.id = 4
  m.from = Message::FROM[:girl]
  m.read = false
  m.user_girl_id = 2
  m.message_list_id = 1
end

Message.seed do |m|
  m.id = 5
  m.from = Message::FROM[:girl]
  m.read = false
  m.user_girl_id = 2
  m.message_list_id = 2
end

Message.seed do |m|
  m.id = 6
  m.from = Message::FROM[:girl]
  m.read = false
  m.user_girl_id = 2
  m.message_list_id = 3
end
