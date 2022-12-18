class Post < ApplicationRecord
  # Validate inputs to prevent bad data from being saved to the database
  validates :title, presence: true, length: { minimum: 5, maximum: 100 }
  validates :body, length: { maximum: 1000 }
  belongs_to :user
end
