class Event < ApplicationRecord
  belongs_to :group
  has_many :assignments
  validates_presence_of :name, :category, :created_by

  def assigned?
    !self.assignments.empty?
  end

  def assigned_to
    self.assignments.map do |a|
      a.user.id
    end
  end

end
