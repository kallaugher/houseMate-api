class EventSerializer < ActiveModel::Serializer
  attributes :id, :name, :category, :assigned_to, :created_by, :status, :amount

end
