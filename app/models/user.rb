class User < ApplicationRecord
  has_secure_password
  validates_presence_of :first_name, :last_name, :email
  belongs_to :group, optional: true
  has_many :assignments
  has_many :messages

  def full_name
    (self.first_name + ' ' + self.last_name).strip
  end

  def initials
    (self.first_name[0] + self.last_name[0]).upcase
  end

  def group_events
    self.group.events
  end

  def assigned_events
    self.assignments.map {|a| a.event}.compact
  end

  def assigned_chores
    self.assigned_events.select{|event| event.category == "chore"}
  end

  def current_month_assigned_chores
    binding.pry
    current_month = DateTime.now.strftime("%b")
    self.assigned_chores.select{|c| c.end_time.strftime("%b") == current_month}
  end
end
