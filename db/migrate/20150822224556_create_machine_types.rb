class CreateMachineTypes < ActiveRecord::Migration
  def change
    create_table :machine_types, id: :uuid do |t|
      t.string :name
      t.text :description
      t.string :muscle_group
      
      t.timestamps null: false
    end
  end
end
