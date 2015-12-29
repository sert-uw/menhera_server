class Message < ActiveRecord::Base
  belongs_to :user
  belongs_to :girl

  FROM = { user: 'user', girl: 'girl' }
end
