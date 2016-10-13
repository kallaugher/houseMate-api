class Event < ApplicationRecord
  belongs_to :group
  has_many :assignments
  validates_presence_of :name, :category, :created_by


  def assigned?
    !self.assignments.empty?
  end

  def assigned_to
    self.assignments.map do |a|
      a.user
    end
  end

  def assigned_to=(assigned_to)
    self.assignments << Assignment.create(user_id: User.find(assigned_to.id), event_id: self.id)
  end
end
