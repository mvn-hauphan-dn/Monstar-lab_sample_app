class Micropost < ApplicationRecord
  belongs_to :user
  scope :microposts_order, -> { order(created_at: :desc) }
  validates :user_id, presence: true
  validates :content, presence: true, length: { maximum: 140 }

  has_one_attached :image
end
