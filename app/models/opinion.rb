class Opinion < ApplicationRecord
  validates :content, presence: true, length: { maximum: 500,
                                                too_long: '500 characters in opinion is the maximum allowed.' }
  belongs_to :user
  has_rich_text :body
end
