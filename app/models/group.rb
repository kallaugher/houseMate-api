class Group < ApplicationRecord
  has_many :users
  has_many :events
  has_many :messages, through: :users

  validates :name, presence: true, allow_blank: false
end
