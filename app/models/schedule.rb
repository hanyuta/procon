class Schedule < ApplicationRecord
    belongs_to: client_info
    belongs_to: process_machine

    validates :start_date , presence: true 
    validates :end_date   , presence: true 
end
