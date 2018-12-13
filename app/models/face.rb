class Face < ApplicationRecord
  belongs_to :card

  validates :question, presence: true
  validates :a1, presence: true
  validates :a2, presence: true
  validates :a3, presence: true

  #assign stack by assigning face.stack = (0, 1, 2, or 3)
  enum stack: %w(daily triweekly weekly monthly)
end
