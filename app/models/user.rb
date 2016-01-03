class User < ActiveRecord::Base
  before_create :set_token
  before_create :set_girls

  has_one :device, dependent: :destroy

  has_many :user_girls, dependent: :destroy
  has_many :girls, through: :user_girls

  private

    def set_token
      self.token = Digest::SHA1.hexdigest(SecureRandom.uuid)
    end

    def set_girls
      self.girls << Girl.all
    end
end
