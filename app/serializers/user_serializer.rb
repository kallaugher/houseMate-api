class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :full_name, :email, :group, :group_id, :assigned_chores, :assigned_chores, :current_month_assigned_chores


end
