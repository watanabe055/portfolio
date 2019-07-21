class Room < ApplicationRecord
  has_many :messages
  enum category: { 喜び: 0, 悲しみ: 1, 不思議: 2, 憧れ: 3, 恐怖: 4, 後悔: 5, 期待: 6, 怒り: 7 }

  validates :title, presence: true, length: { in: 1..100}
  validates :detail, presence: true, length: { in: 1..200}
end
