class Advice < ApplicationRecord
  belongs_to :worry
  belongs_to :in_reply_to, class_name: self
  has_many :replies, class_name: self, foreign_key: :in_reply_to_id
end
