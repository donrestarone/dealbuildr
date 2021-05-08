class Document < ApplicationRecord
  validates :title, presence: true

  has_many :content_blocks, dependent: :destroy
  accepts_nested_attributes_for :content_blocks, allow_destroy: true

  has_many :answers, through: :content_blocks
  accepts_nested_attributes_for :answers, allow_destroy: true
end
