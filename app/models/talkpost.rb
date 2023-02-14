class Talkpost < ApplicationRecord
    default_scope -> { order(created_at: :desc) }
    validates :content, presence: true, length: { maximum: 200 }
end
