class AddForeignKeyFactIntervention < ActiveRecord::Migration[5.2]
  def change
    add_column :fact_interventions, :customer_id, :bigint
    add_foreign_key :fact_interventions, :customers, name: "fk_fact_intervention_customer"
    add_foreign_key :fact_interventions, :batteries,  name: "fk_fact_intervention_battery"
    add_foreign_key :fact_interventions, :columns,  name: "fk_fact_intervention_column"
    add_foreign_key :fact_interventions, :elevators,  name: "fk_fact_intervention_elevator"
  end
end
