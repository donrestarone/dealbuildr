class ContentBlock < ApplicationRecord
  has_rich_text :content
  belongs_to :document
end
