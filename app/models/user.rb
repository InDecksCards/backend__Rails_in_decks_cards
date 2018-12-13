class User < ApplicationRecord
  validates :email, presence: true, :uniqueness => true
  validates_uniqueness_of :username, case_sensitive: true

  has_secure_password
  has_many :subscriptions
  has_many :decks, through: :subscriptions

  def authored_decks
      Deck.where(author_id: id)
  end

  def subscribe(deck)
    Subscription.create(deck_id: deck.id, user_id: id)
  end
end
