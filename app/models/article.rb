class Article < ApplicationRecord
  # Validates the presence of a title
  # and that the title is at least 5 characters long
  validates :title, presence: true,
                    length: { minimum: 5 }
end
