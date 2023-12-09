class ProcessMachine < ApplicationRecord
  
  has_one :process_schedules

  validates :pm_name,                    presence: true 
  validates :lastpm_abbreviation_name,   presence: true
  validates :pm_colo  ,                  presence: true , default: "#FFFFFF"
end
