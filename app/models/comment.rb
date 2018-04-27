class Comment < ApplicationRecord
  belongs_to :term
  belongs_to :user
  validates :user_id, :presence => true
  validates :term_id, :presence => true
  validates :body, :presence => true 
end
