class ClientInfo < ApplicationRecord
    belongs_to :clients_info_name
    has_many :schedules

    validates :client_name ,presence:true
end
