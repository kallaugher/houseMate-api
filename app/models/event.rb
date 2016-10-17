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

  def month
    self.end_time.strftime("%m")
  end

  def year
    self.end_time.strftime("%Y")
  end
  
  def day
    self.end_time.strftime("%d")
  end
end
