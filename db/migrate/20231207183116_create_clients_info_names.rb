class CreateClientsInfoNames < ActiveRecord::Migration[7.0]
  def change
    create_table :clients_info_names do |t|
      t.string       :clients_info1_name
      t.string       :clients_info2_name
      t.string       :clients_info3_name
      t.string       :clients_info4_name
      t.string       :clients_info5_name
      t.string       :clients_info6_name
      t.string       :clients_info7_name
      t.string       :clients_info8_name
      t.string       :clients_info9_name
      t.string       :clients_info10_name
      t.references   :user,                null:false , foreign_key: true
      t.timestamps
    end
  end
end
