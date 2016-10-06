class EventSerializer < ActiveModel::Serializer
  attributes :id, :name, :category, :assigned_to, :created_by

#   {events: [
#   {id: 1, category: "chore", description: "dishes", assigned_to: 1, created_by: 8}
#   ]
# ]}

end
