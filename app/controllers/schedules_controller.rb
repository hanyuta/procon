class SchedulesController < ApplicationController
  before_action :authenticate_user!, expect: [:new]
  before_action :set_client_info_names, expect: [:index , :new]

  def index
  end

  def new
    @process_machine = ProcessMachine.all
    @schedule = Schedule.new
    @client_info = ClientInfo.last
  end

  private

  def set_client_info_names
    @client_info_name = ClientsInfoName.first
  end

end
 