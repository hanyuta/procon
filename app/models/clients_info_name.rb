class ClientsInfoName < ApplicationRecord
    has_one :user
    has_many :client_info
end
