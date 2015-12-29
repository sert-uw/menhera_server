class User < ActiveRecord::Base
  has_one :device, dependent: :destroy
end
