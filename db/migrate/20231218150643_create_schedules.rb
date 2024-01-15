class CreateSchedules < ActiveRecord::Migration[7.0]
  def change
    create_table :schedules do |t|
      t.date        :start_date,      null: false   
      t.date        :end_date,        null: false 
      t.integer     :process_machine, null: false , foreign_key:true
      t.integer     :client_info,    null: false , foreign_key:true
      t.timestamps
    end
  end
end
