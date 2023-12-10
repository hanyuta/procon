class ProcessMachine < ApplicationRecord
  
  has_many :process_schedules

  validates :pm_name,                    presence: true 
  validates :lastpm_abbreviation_name,   presence: true ,length: { maximum: 5, message: "は5文字以内で入力してください" }
  validates :pm_color  ,                 presence: true 

end