class Inspiration < ApplicationRecord
  validates :saying, presence: true, length: {maximum: 300, minimum: 3 }
  validates :author, presence: true, length: {maximum: 30, minimum: 1 }
end
