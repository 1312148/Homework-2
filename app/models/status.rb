class Status < ApplicationRecord
  belongs_to :user
   has_many :comments, dependent: :destroy
  validates :user_id, presence: true
  default_scope -> { order(created_at: :desc) }
  validates :content, presence: true, length: { maximum: 140 }
end
