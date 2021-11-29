class FactIntervention < ActiveRecord::Base
    establish_connection :data_warehouse
    belongs_to :employee
    belongs_to :building
    belongs_to :battery
    belongs_to :column
    belongs_to :elevator
    belongs_to :customer
end
