class User < ApplicationRecord
  has_secure_password
  validates_presence_of :first_name, :last_name, :email, :password

  def full_name
    (self.first_name + ' ' + self.last_name).chomp.strip
  end

  def get_initials
    (self.first_name[0] + self.last_name[0]).upcase
  end
end
