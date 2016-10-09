class EventSerializer < ActiveModel::Serializer
  attributes :id, :name, :category, :status, :amount, :assigned_to, :created_by
end
