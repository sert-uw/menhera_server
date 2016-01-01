User.seed do |u|
  u.id = 1
  u.name = 'メンヘラマスター'
  u.uuid = '1234-1234-1234-1234'
  u.device = Device.create(device_type: 'android', device_token: '1234abcd5678efgh')
end

User.seed do |u|
  u.id = 2
  u.name = 'メンヘラ入門'
  u.uuid = 'abcd-abcd-abcd-abcd'
  u.device = Device.create(device_type: 'ios', device_token: 'abcd1234efgh5678')
end
