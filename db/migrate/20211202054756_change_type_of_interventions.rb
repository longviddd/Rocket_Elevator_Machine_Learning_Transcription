class ChangeTypeOfInterventions < ActiveRecord::Migration[5.2]
  def change
    change_column :interventions, :start_intervention, :datetime
    change_column :interventions, :end_intervention, :datetime
  end
end
