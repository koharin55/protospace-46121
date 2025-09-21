class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :prototype

  # バリデーション追加
  validates :content, presence: true
end
