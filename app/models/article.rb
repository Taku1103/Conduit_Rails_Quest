class Article < ApplicationRecord
  belongs_to :user
  default_scope -> { order(created_at: :desc) }

  validates :title,  presence: true, length: { maximum: 100 }
  validates :content, presence: true, length: { maximum: 2000 }
  validates :user_id, presence: true
end
