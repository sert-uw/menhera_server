class User < ActiveRecord::Base
  has_one :device, dependent: :destroy

  has_many :user_girls
  has_many :girls, through: :user_girls
end
