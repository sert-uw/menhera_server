class MessageList < ActiveRecord::Base
  before_create :set_response_candidates

  belongs_to :girl
  has_many :messages, dependent: :destroy

  has_many :message_list_response_candidates, dependent: :destroy
  has_many :response_candidates, through: :message_list_response_candidates

  private

  def set_response_candidates
    self.response_candidates = ResponseCandidate.all
  end
end
