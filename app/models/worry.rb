class Worry < ApplicationRecord
  has_many :advices

  scope :has_no_advices, -> { where(advices_count: 0) }
end
