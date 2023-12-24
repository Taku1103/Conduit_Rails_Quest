class Article < ApplicationRecord
  belongs_to :user

  validates :title,  presence: true, length: { maximum: 100 }
  validates :content, presence: true, length: { maximum: 2000 }
  validates :author, presence: true, length: { maximum: 50 }
  validates :user_id, presence: true
end
