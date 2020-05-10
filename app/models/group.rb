class Group < ApplicationRecord
  belongs_to :user
  has_many :transactions
  has_one_attached :icon
end
