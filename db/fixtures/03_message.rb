Message.seed do |m|
  m.id = 1
  m.from = Message::FROM[:girl]
  m.text = '寂しい'
  m.read = false
  m.user_id = 1
  m.girl_id = 1
end

Message.seed do |m|
  m.id = 2
  m.from = Message::FROM[:girl]
  m.text = '寂しいよ...'
  m.read = false
  m.user_id = 1
  m.girl_id = 1
end

Message.seed do |m|
  m.id = 3
  m.from = Message::FROM[:girl]
  m.text = 'どうして返事くれないの?'
  m.read = false
  m.user_id = 1
  m.girl_id = 1
end

Message.seed do |m|
  m.id = 4
  m.from = Message::FROM[:girl]
  m.text = '会いたい'
  m.read = false
  m.user_id = 2
  m.girl_id = 1
end

Message.seed do |m|
  m.id = 5
  m.from = Message::FROM[:girl]
  m.text = '会いたい会いたい'
  m.read = false
  m.user_id = 2
  m.girl_id = 1
end

Message.seed do |m|
  m.id = 6
  m.from = Message::FROM[:girl]
  m.text = '...'
  m.read = false
  m.user_id = 2
  m.girl_id = 1
end

Message.seed do |m|
  m.id = 7
  m.from = Message::FROM[:girl]
  m.text = '死にたい'
  m.read = false
  m.user_id = 3
  m.girl_id = 1
end

Message.seed do |m|
  m.id = 8
  m.from = Message::FROM[:girl]
  m.text = 'さよなら'
  m.read = false
  m.user_id = 3
  m.girl_id = 1
end

Message.seed do |m|
  m.id = 9
  m.from = Message::FROM[:girl]
  m.text = '...'
  m.read = false
  m.user_id = 3
  m.girl_id = 1
end

Message.seed do |m|
  m.id = 10
  m.from = Message::FROM[:girl]
  m.text = 'ねぇ...なんでもない'
  m.read = false
  m.user_id = 4
  m.girl_id = 1
end

Message.seed do |m|
  m.id = 11
  m.from = Message::FROM[:girl]
  m.text = 'あのさぁ'
  m.read = false
  m.user_id = 4
  m.girl_id = 1
end

Message.seed do |m|
  m.id = 12
  m.from = Message::FROM[:girl]
  m.text = '...'
  m.read = false
  m.user_id = 4
  m.girl_id = 1
end
