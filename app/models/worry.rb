class Worry < ApplicationRecord
  belongs_to :user

  has_many :advices

  scope :has_no_advices, -> { where(advices_count: 0) }
  scope :open, -> { where(closed_at: nil) }
  scope :closed, -> { where.not(closed_at: nil) }

  after_save :close_if_has_many_advices

  validates :detail, presence: true, length: { in: 1..35 }

  def self.mine(user_id)
    user_id ? where(user_id: user_id) : none
  end

  def self.not_mine(user_id)
    user_id ? where.not(user_id: user_id) : all
  end

  private

  def close_if_has_many_advices
    if advices_count >= 30
      self.update_column(:closed_at, Time.current)
      advices.all.update_all(closed_at: Time.current)
    end
  end
end
