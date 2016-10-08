class EventSerializer < ActiveModel::Serializer
  attributes :id, :name, :category, :status, :amount
end
