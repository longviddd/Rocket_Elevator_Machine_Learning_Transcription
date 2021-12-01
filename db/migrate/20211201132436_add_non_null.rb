class AddNonNull < ActiveRecord::Migration[5.2]
  def change
    change_column :interventions, :author, :bigint, null: false
    change_column :interventions, :customer_id, :bigint, null: false
    change_column :interventions, :building_id, :bigint, null: false
    change_column :interventions, :battery_id, :bigint, null: false
    change_column_default :interventions, :result, "Incomplete"
    change_column_default :interventions, :status, "Pending"
  end
end
