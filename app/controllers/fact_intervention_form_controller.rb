class FactInterventionFormController < ApplicationController
    def fact_intervention_form_params
        params.permit(:customer_id, :building_id, :battery_id, :column_id)
    end
    def getCustomer
        customer = Customer.find(params[:customer_id])
    end
end