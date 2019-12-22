class Feed < ApplicationRecord
  mount_uploader :image, ImageUploader
  validates :image,  presence: true
  validates :content,  presence: true, length: { in: 1..100}
  belongs_to :user
end
