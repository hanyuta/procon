class SchedulesController < ApplicationController

  def index
    @client_info_name = ClientsInfoName.first
  end


end
