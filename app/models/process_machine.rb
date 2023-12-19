class ProcessMachine < ApplicationRecord

    has_one :schedule

    validates :pm_name,                    presence: true 
    validates :pm_abbreviation,            presence: true ,length: { maximum: 5, message: "は5文字以内で入力してください" }
    validates :pm_color,                   presence: true 

end
