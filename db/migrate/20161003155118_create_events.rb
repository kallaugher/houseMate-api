class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :name
      t.string :category
      t.integer :group_id
      t.integer :created_by
      t.datetime :start_time
      t.datetime :end_time
      t.integer :amount
      t.string :status, default: "pending"

      t.timestamps
    end
  end
end
