class Deck < ApplicationRecord
  has_and_belongs_to_many :cards
  has_many :flags, through: :cards
  belongs_to :author, :class_name => "User", :foreign_key => "author_id"
  has_many :subscriptions

  def subscribers
    User.joins(:subscriptions).where(:subscriptions => {deck_id: id})
  end
end
