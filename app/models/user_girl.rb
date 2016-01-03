class UserGirl < ActiveRecord::Base
  before_validation :check_dependence

  belongs_to :user
  belongs_to :girl
  has_many :messages

  private

  def check_dependence
    self.dependence = 0 if self.dependence < 0
    self.dependence = 100 if self.dependence > 100
  end
end
