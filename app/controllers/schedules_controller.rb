class SchedulesController < ApplicationController
  before_action :authenticate_user!, expect: [:new]
  before_action :set_client_info_names, expect: [:index , :new]

  def index
    @comments = Comment.order(id: "DESC")
    @clients_info_name = ClientsInfoName.all
  end

  def new
    @process_machine = ProcessMachine.all
    @schedule = Schedule.new
    @client_info = ClientInfo.last  
  end

  def create
    params[:schedule][:pm_tasks].each do |task|

      # データを保存
      Schedule.create!(
        client_info_id: task[:client_id],
        start_date: task[:start_day],
        end_date: task[:end_day],
        process_machine_id: task[:id]
      )
    end

    render json: { status: 'success', message: '保存が完了しました' }
  rescue StandardError => e
    render json: { status: 'error', message: e.message }
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
