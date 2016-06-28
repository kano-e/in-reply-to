class Worry < ApplicationRecord
  has_many :advices

  scope :has_no_advices, -> { where(advices_count: 0) }

  after_save :close_if_has_many_advices

  private

  def close_if_has_many_advices
    if advices_count >= 30
      self.update_column(:closed_at, Time.current)
      advices.all.update_all(closed_at: Time.current)
    end
  end
end
