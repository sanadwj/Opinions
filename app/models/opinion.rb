class Opinion < ApplicationRecord
  validates :body, presence: true, length: { maximum: 500,
                                                too_long: '500 characters in opinion is the maximum allowed.' }
  belongs_to :user
  has_rich_text :body
end
