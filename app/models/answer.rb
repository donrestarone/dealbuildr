class Answer < ApplicationRecord
  validates :content, presence: true
  has_rich_text :content
  belongs_to :content_block
end
