class Schedule < ApplicationRecord
    validates :start_date , presence: true 
    validates :end_date   , presence: true 
    validates :client_info_id ,presence: true
    validates :process_machine_id , presence: true
end
