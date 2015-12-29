class Message < ActiveRecord::Base
  belongs_to :user
  belongs_to :girl
  belongs_to :message_list

  FROM = { user: 'user', girl: 'girl' }
end
