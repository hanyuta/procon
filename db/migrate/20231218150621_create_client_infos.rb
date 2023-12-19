class CreateClientInfos < ActiveRecord::Migration[7.0]
  def change
    create_table :client_infos do |t|
      t.string      :client_name,   null:false
      t.string      :client_info1
      t.string      :client_info2
      t.string      :client_info3
      t.string      :client_info4
      t.string      :client_info5
      t.string      :client_info6
      t.string      :client_info7
      t.string      :client_info8
      t.string      :client_info9
      t.string      :client_info10
      t.references  :clients_info_name, null:false ,foreign_key: true 
      t.timestamps
    end
  end
end
