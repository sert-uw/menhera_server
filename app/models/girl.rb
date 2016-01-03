class Girl < ActiveRecord::Base
  before_validation :check_spirit

  has_many :user_girls, dependent: :destroy
  has_many :users, through: :user_girls
  has_many :message_lists, dependent: :destroy
  has_many :response_candidates, dependent: :destroy

  private

  def check_spirit
    self.spirit = -100 if self.spirit < -100
    self.spirit = 100 if self.spirit > 100
  end
end
