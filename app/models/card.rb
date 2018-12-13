class Card < ApplicationRecord
  has_and_belongs_to_many :decks
  has_many :faces
  has_many :flags
end
