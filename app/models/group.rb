class Group < ApplicationRecord
  belongs_to :user
  has_many :transactions
  has_one_attached :icon
  validates :image, presence:true
  validates :name, presence:true
end
