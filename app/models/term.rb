class Term < ApplicationRecord
  has_many :comments
  validates :name, :presence => true
  validates :blurb, :presence => true
  validates :explanation, :presence => true
end
