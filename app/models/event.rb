class Event < ApplicationRecord
  belongs_to :group
  has_many :assignments
end
