class Message < ActiveRecord::Base
  belongs_to :user
  belongs_to :girl
  belongs_to :message_list
  belongs_to :response_candidate

  FROM = { user: 'user', girl: 'girl' }
end
