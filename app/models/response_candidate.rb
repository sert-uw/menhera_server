class ResponseCandidate < ActiveRecord::Base
  before_create :set_message_lists

  belongs_to :girl
  has_many :messages, dependent: :destroy

  has_many :message_list_response_candidates, dependent: :destroy
  has_many :message_lists, through: :message_list_response_candidates

  private

  def set_message_lists
    self.message_lists = MessageList.all
  end
end
