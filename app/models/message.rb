class Message < ApplicationRecord
  validates :content, presence: true
  belongs_to :user, optional: true
  belongs_to :room, optional: true
  # createの後にコミットする { MessageBroadcastJobのperformを遅延実行 引数はself }
  after_create_commit { MessageBroadcastJob.perform_later self }

  #チャットの禁止ワード
  INVALID_NAME_PARTS = %w(
    ばか
    バカ
    馬鹿
    間抜け
    アホ
    あほ
    阿保
    くたばれ
    間抜け
    マヌケ
    まぬけ
    ボケ
    ぼけ
    変態
    死ね
    くそ
    クソ
    デブ
    ババア
    キモい
    しね
    カス
  )
  validates :content, format: { without: ::Regexp.union(INVALID_NAME_PARTS) }
end
