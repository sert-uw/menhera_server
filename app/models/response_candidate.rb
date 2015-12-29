class ResponseCandidate < ActiveRecord::Base
  has_many :message_list_response_candidates
  belongs_to :girl
  has_many :messages
end
