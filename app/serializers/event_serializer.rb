class EventSerializer < ActiveModel::Serializer
  attributes :id, :name, :category, :created_by, :assigned_to, :end_time, :start_time, :status, :amount
end
