class Transaction < ApplicationRecord
  belongs_to :user
  has_many :groups
  validates :name, presence: true
  validates :amount, presence: true
  validates :amount, numericality: { greater_than: 0 }
end
