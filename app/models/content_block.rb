class ContentBlock < ApplicationRecord
  validates :content, presence: true
  has_rich_text :content
  belongs_to :document
  has_many :answers, dependent: :destroy
  accepts_nested_attributes_for :answers, allow_destroy: true
end
