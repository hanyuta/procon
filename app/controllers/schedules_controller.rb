class SchedulesController < ApplicationController
  before_action :authenticate_user!, expect: [:new]
  before_action :set_client_info_names, expect: [:index , :new]

  def index
    @comments = Comment.order(id: "DESC")
  end

  def new
    @process_machine = ProcessMachine.all
    @schedule = Schedule.new
    @client_info = ClientInfo.last  
  end

  def create

  end

  def api_data
    @client_info = ClientInfo.last
    @pm_tasks = ProcessMachine.all
    render json: {
      client_info: @client_info,
      pm_tasks: @pm_tasks
    }
  end


  private

  def set_client_info_names
    @client_info_name = ClientsInfoName.first
  end

end
