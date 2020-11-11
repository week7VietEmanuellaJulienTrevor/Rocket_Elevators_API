class Intervention < ApplicationRecord
     belongs_to :building
    belongs_to :employees
    belongs_to :batteries
    belongs_to :columns
    belongs_to :elevators
    

    # Connect to FactIntervention table in PostgreSQL
    # establish_connection "#{Rails.env}_pg".to_sym
    # self.table_name = 'factintervention'
end
