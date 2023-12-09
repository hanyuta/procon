class CreateProcessMachines < ActiveRecord::Migration[7.0]
  def change
    create_table :process_machines do |t|
      t.string       :pm_name,         null: false
      t.string       :pm_abbreviation, null: false
      t.string       :pm_color,        null: false , default: "#FFFFFF" 
      t.timestamps
    end
  end
end
