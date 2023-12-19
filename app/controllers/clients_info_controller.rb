class ClientsInfoController < ApplicationController

    def index
        @client_info_name = ClientsInfoName.first
        @client_info = ClientInfo.new
    end

    def create
        @client_info = ClientInfo.new(client_name_params)

        if @client_info.save
            redirect_to clients_info_index_path 
        else
            render :index, status: :unprocessable_entity
        end
    end

    private

    def client_name_params
        params.require(:client_info).permit(:client_name,:client_info1,:client_info2,:client_info3,:client_info4,:client_info5,
                                                :client_info6,:client_info7,:client_info8,:client_info9,:client_info10 )
    end

end
