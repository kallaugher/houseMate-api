class EventSerializer < ActiveModel::Serializer
  attributes :id, :name, :category, :created_by, :end_time, :start_time, :status, :amount
end
