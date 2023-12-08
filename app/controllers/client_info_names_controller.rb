class ClientInfoNamesController < ApplicationController
    before_action :authenticate_user!, expect: [:index]
    
    def index
        @client_info_name = ClientsInfoName.new
    end

    def create
        
    end
end
