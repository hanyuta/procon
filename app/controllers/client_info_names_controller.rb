class ClientInfoNamesController < ApplicationController
    before_action :authenticate_user!, expect: [:index,:edit]
    
    def index
        @client_info_name = ClientsInfoName.new
    end

    def create
        @client_info_name = ClientsInfoName.new(client_info_params)
        @client_info_name.save
        redirect_to root_path
    end

    def edit
        @client_info_name = ClientsInfoName.first
    end

    def update
        @client_info_name = ClientsInfoName.first
        @client_info_name.update(client_info_params)
        redirect_to root_path
    end

    private

    def client_info_params
        params.require(:clients_info_name).permit(:clients_info1_name,:clients_info2_name,:clients_info3_name,:clients_info4_name,:clients_info5_name,
                                                :clients_info6_name,:clients_info7_name,:clients_info8_name,:clients_info9_name,:clients_info10_name ).merge(user_id: current_user.id)
    end

end
