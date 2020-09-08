class Tweety < ApplicationRecord
  validates :message, presence: true, length: { maximum: 250 }
end
