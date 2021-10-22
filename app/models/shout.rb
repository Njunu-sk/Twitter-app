class Shout < ApplicationRecord
  belongs_to :user
  belongs_to :content, polymorphic: true

  validates :user_id, presence: true

  delegate :username, to: :user
end
