class ResponseCandidate < ActiveRecord::Base
  has_many :message_list_response_candidates
  has_many :message_lists, through: :message_list_response_candidates
  belongs_to :girl
end
