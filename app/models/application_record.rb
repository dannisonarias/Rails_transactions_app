class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
  scope :sort_recent, -> { order(created_at: :desc) }
end
