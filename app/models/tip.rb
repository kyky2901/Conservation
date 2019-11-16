class Tip < ApplicationRecord
  validates :text, presence: true, length: { maximum: 140, minimum: 3 }
  validates :source, presence: true, length: { maximum: 100, minimum: 3 }
end
