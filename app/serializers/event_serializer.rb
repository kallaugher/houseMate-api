class EventSerializer < ActiveModel::Serializer

  attributes :id, :name, :category, :assigned_to, :created_by, :end_time, :start_time, :status, :amount, :month, :year, :day


end
