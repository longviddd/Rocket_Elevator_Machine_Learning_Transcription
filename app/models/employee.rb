# frozen_string_literal: true

class Employee < ApplicationRecord
    belongs_to :user 
    has_many :batteries, dependent: :destroy
    has_many :fact_intervention

        def to_s
        "Employee #" + self.id.to_s
    end
end
