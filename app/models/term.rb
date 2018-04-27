class Term < ApplicationRecord
  validates :name, :presence => true
  validates :blurb, :presence => true
  validates :explanation, :presence => true
end
