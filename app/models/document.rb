class Document < ApplicationRecord
  validates :title, presence: true

  has_many :content_blocks, dependent: :destroy
  accepts_nested_attributes_for :content_blocks, allow_destroy: true
end
