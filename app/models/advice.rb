class Advice < ApplicationRecord
  belongs_to :user
  belongs_to :worry, counter_cache: :advices_count
  belongs_to :in_reply_to, class_name: self, optional: true, counter_cache: :replies_count
  has_many :replies, class_name: self, foreign_key: :in_reply_to_id

  scope :has_no_replies, -> { where(replies_count: 0) }
  scope :open, -> { where(closed_at: nil) }

  after_save :call_worry_after_save

  validates :detail, presence: true, length: { in: 1..35 }

  def self.not_mine(user_id)
    user_id ? where.not(user_id: user_id) : all
  end

  private

  def call_worry_after_save
    worry.send(:close_if_has_many_advices)
  end
end
